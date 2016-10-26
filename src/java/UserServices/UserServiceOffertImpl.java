/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserServices;

import Hibernate.Utility;
import Modele.Annonce;
import Modele.Service;
import Modele.ServicesOfferts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.activation.DataSource;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Olga
 */
public class UserServiceOffertImpl implements UserServiceOffert {

    DataSource data;
    SessionFactory session;

    @Override
    public List<ServicesOfferts> getAllService() {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getAllService = session.createSQLQuery("Select * from services_offerts");
        List<ServicesOfferts> listService = getAllService.list();
        /* for (int i = 0; i < listService.size(); i++) {
         System.out.println(listService.get(i).getId().toString();
         }*/

        return listService;
    }

    @Override
    public List<ServicesOfferts> getAllServiceDUneUtilisateur(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();

        List<ServicesOfferts> service = (List<ServicesOfferts>) session.createSQLQuery(
                "Select * from services_offerts where id_utilisateur = " + id)
                .addEntity(ServicesOfferts.class).list();

        return service;
    }

    @Override
    public ServicesOfferts getUnService(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getUnService = session.createSQLQuery("Select * from services_offerts where id_utilisateur = " + id);
        Object[] obj = (Object[]) getUnService.list().get(0);
        ServicesOfferts service = new ServicesOfferts();
        service.setId(Integer.parseInt(obj[0].toString()));
        service.setIdUtilisateur(Integer.parseInt(obj[1].toString()));
        service.setIdService(Integer.parseInt(obj[2].toString()));
        service.setServiceMasque(Boolean.parseBoolean(obj[3].toString()));

        //ServicesOfferts service = (ServicesOfferts) getUnService;
        return service;
    }

    @Override
    @Transactional
    public void addService(String titre, String description, int idService, int idUser) {
        ServicesOfferts serviceOffert = new ServicesOfferts();
        serviceOffert.setIdService(idService);
        serviceOffert.setIdUtilisateur(idUser);
        //serviceOffert.setServiceMasque(serviceMasque);

        Session session = Utility.getSessionFactory().openSession();
        //Transaction tx = session.beginTransaction();
        session.beginTransaction();

        SQLQuery insertQuery = session.createSQLQuery(""
                + "INSERT INTO services_offerts(id_utilisateur, id_service, serviceMasque)VALUES(?,?,?)");
        insertQuery.setParameter(0, serviceOffert.getIdService());
        insertQuery.setParameter(1, serviceOffert.getIdUtilisateur());
        insertQuery.setParameter(2, serviceOffert.getServiceMasque());
        insertQuery.executeUpdate();
        session.getTransaction().commit();

        int id = (Integer) session.save(serviceOffert);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    @Transactional
    public void updateService(ServicesOfferts serviceOffert) {

        Session session = Utility.getSessionFactory().openSession();
        //Transaction tx = session.beginTransaction();
        session.beginTransaction();

        String query = "UPDATE services_offerts SET id_utilisateur = '"
                + serviceOffert.getIdService() + "' id_service = '"
                + serviceOffert.getIdService() + "' serviceMasque = '"
                + serviceOffert.getServiceMasque() + "' WHERE id = '"
                + serviceOffert.getId();

        session.getTransaction().begin();
        session.createSQLQuery(query).executeUpdate();
        session.getTransaction().commit();
        session.close();

    }

    @Override
    @Transactional
    public void deletService(ServicesOfferts serviceOffert) {
        Session session = Utility.getSessionFactory().openSession();
        //Transaction tx = session.beginTransaction();
        session.beginTransaction();

        SQLQuery deleteQuery = session.createSQLQuery(
                "delete from services_offerts "
                + "where id = " + serviceOffert.getId());
        deleteQuery.setString(0, "VICIOUS");
        int updated = deleteQuery.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }
    
    public void ajouterAnnonce(Annonce uneAnnonce) {
        Session session = Utility.getSessionFactory().openSession();
        //Transaction tx = session.beginTransaction();
        session.beginTransaction();

        SQLQuery insertQuery = session.createSQLQuery(""
                + "INSERT INTO annonce(id_annonce,id_annonceur,id_service_offerts, titre,"
                + "description, date, date_annonce_gmt, type_annonce)VALUES(?,?,?,?,?,?,?,?)");
        insertQuery.setParameter(0, uneAnnonce.getId());
        insertQuery.setParameter(1, uneAnnonce.getIdAnnonceur());
        insertQuery.setParameter(2, uneAnnonce.getIdServiceOfferts());
        insertQuery.setParameter(3, uneAnnonce.getTitre());
        insertQuery.setParameter(4, uneAnnonce.getDescription());
        insertQuery.setParameter(5, uneAnnonce.getDate());
        insertQuery.setParameter(6, uneAnnonce.getDateAnnonceGmt());
        insertQuery.setParameter(7, uneAnnonce.getTypeAnnonce());
        insertQuery.executeUpdate();
        session.getTransaction().commit();

        int id = (Integer) session.save(uneAnnonce);
        session.getTransaction().commit();
        session.close();
    }

}
