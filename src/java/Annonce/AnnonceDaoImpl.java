/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Annonce;

import Hibernate.Utility;
import Modele.Annonce;
import Modele.ServicesOfferts;
import java.sql.Date;
import java.util.List;
import javax.activation.DataSource;
import javax.transaction.Transactional;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Olga
 */
public class AnnonceDaoImpl implements AnnonceDao {

    DataSource data;
    SessionFactory session;

    @Override
    public List<Annonce> getAllAnnonce() {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        
        List<Annonce> listeAnnonces = (List<Annonce>) session.createSQLQuery(
                "Select * from annonce")
                .addEntity(Annonce.class).list();

        return listeAnnonces;
    }

    @Override
    public List<Annonce> getAllAnnonceDUneUser(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        
          List<Annonce> listeAnnonce = (List<Annonce>) session.createSQLQuery(
                "Select * from annonce WHERE id_annonceur =" + id)
                .addEntity(Annonce.class).list();

        return listeAnnonce;
    }

    @Override
    @Transactional
    public void addAnnonce(int idAnnonceur, int idServiceOffert, String titre,
            String description, Date date, Date dateAnnonceGmt, boolean typeAnnonce) {
        Annonce annonce = new Annonce();
        annonce.setIdAnnonceur(idAnnonceur);
        annonce.setIdServiceOfferts(idServiceOffert);
        annonce.setTitre(titre);
        annonce.setDescription(description);
        annonce.setDate(date);
        annonce.setDateAnnonceGmt(dateAnnonceGmt);
        annonce.setTypeAnnonce(typeAnnonce);

        Session session = Utility.getSessionFactory().openSession();
        //Transaction tx = session.beginTransaction();
        session.beginTransaction();

        SQLQuery insertQuery = session.createSQLQuery(""
                + "INSERT INTO annonce(id_annonceur,id_service_offerts,titre,description,date,date_annonce_gmt,type_annonce)VALUES(?,?,?)");
        insertQuery.setParameter(0, annonce.getIdAnnonceur());
        insertQuery.setParameter(1, annonce.getIdServiceOfferts());
        insertQuery.setParameter(2, annonce.getTitre());
        insertQuery.setParameter(3, annonce.getDescription());
        insertQuery.setParameter(4, annonce.getDate());
        insertQuery.setParameter(5, annonce.getDateAnnonceGmt());
        insertQuery.setParameter(6, annonce.getTypeAnnonce());
        insertQuery.executeUpdate();
        session.getTransaction().commit();

        int id = (Integer) session.save(annonce);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    @Transactional
    public void updateAnnonce(Annonce annonce) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();

        String query = "UPDATE annonce SET id_annonceur = '"
                + annonce.getIdAnnonceur() + "' id_service_offerts = '"
                + annonce.getIdServiceOfferts() + "' titre = '"
                + annonce.getTitre() + "' description = '"
                + annonce.getDescription() + "' date = '"
                + annonce.getDate() + "' date_annonce_gmt = '"
                + annonce.getDateAnnonceGmt() + "' type_annonce = '"
                + annonce.getTypeAnnonce() + "' WHERE id = '"
                + annonce.getId();

        session.getTransaction().begin();
        session.createSQLQuery(query).executeUpdate();
        session.getTransaction().commit();
        session.close();
    }

    @Override
    @Transactional
    public void deletAnnonce(Annonce annonce) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();

        SQLQuery deleteQuery = session.createSQLQuery(
                "delete from annonce "
                + "where id = " + annonce.getId());
        deleteQuery.setString(0, "VICIOUS");
        int updated = deleteQuery.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Annonce getUnAnnonce(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getUnAnnonce = session.createSQLQuery("Select * from annonce  WHERE id_service_offerts =" + id);
        Annonce annonce = (Annonce) getUnAnnonce;

        return annonce;
    }

}
