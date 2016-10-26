/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DAO.UserDao;
import Hibernate.Utility;
import Modele.Service;
import Modele.ServicesOfferts;
import Modele.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.activation.DataSource;
import javax.transaction.Transactional;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Melissa
 */
public class UserServiceImpl implements UserService {

    DataSource data;
    SessionFactory session;

    @Override
    public List<Service> getAllService() {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getAllService = session.createSQLQuery("Select * from type_service");
        List<Object[]> listServices = getAllService.list();
        List<Service> listService = convertListToServiceList(listServices);
        for (int i = 0; i < listService.size(); i++) {
            System.out.println(listService.get(i).getNomServiceFr());
        }
       // System.out.println("Total dans table type_service: " + listServices.size());

        makeServiceDropDown(listService);
        return listService;
    }
    
    @Override
    public List<Service> getAllServiceDUneUser(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();    
         List<Service> service = (List<Service>) session.createSQLQuery(
                "Select * from type_service WHERE id_type_service =" + id)
                .addEntity(Service.class).list();
    
        return service;
    }

    @Override
    public Service getTypeService(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getUnService = session.createSQLQuery("Select * from type_service  WHERE id_type_service =" + id);
         Object[] obj = (Object[]) getUnService.list().get(0);
         Service service = new Service();
         service.setNomServiceAng(obj[2].toString());
         service.setNomServiceFr(obj[1].toString());
         service.setId(Integer.parseInt(obj[0].toString()));

        return service;
    }

//    public List<Service> getAllServicesByTerm(String term) {
//        Session session = Utility.getSessionFactory().openSession();
//        session.beginTransaction();
//        SQLQuery getAllService = session.createSQLQuery("Select * from type_service where nom_service_fr LIKE ?");
//        getAllService.setParameter(0, term + "%");
//        List<Object[]> listServices = getAllService.list();
//        List<Service> listService = convertListToServiceList(listServices);
//        for (int i = 0; i < listService.size(); i++) {
//            System.out.println(listService.get(i).getNomServiceFr());
//        }
//        System.out.println("Total dans table type_service commencant par" + term + ":" + listServices.size());
//
//        makeServiceDropDown(listService);
//        return listService;
//    }
    public List<String> getAllServicesByTerm(String term) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getAllService = session.createSQLQuery("Select * from type_service where nom_service_fr LIKE ?");
        getAllService.setParameter(0, term + "%");
        List<String> nomServices = new ArrayList<>();
        List<Object[]> listServices = getAllService.list();
        List<Service> listService = convertListToServiceList(listServices);
        for (int i = 0; i < listService.size(); i++) {
            nomServices.add(listService.get(i).getNomServiceFr());
            System.out.println(listService.get(i).getNomServiceFr());
        }
        System.out.println("Total dans table type_service commencant par" + term + ":" + listServices.size());

        makeServiceDropDown(listService);
        return nomServices;
    }

    private String makeServiceDropDown(List<Service> listService) {
        String code = "";
        UserServiceImpl service = new UserServiceImpl();
        code += "<select class=\"form-control_recherche_annonce\" onChange=\"location = recherche.htm\">\n";
        for (Service objectTemp : listService) {
            code += "<option value=\"" + objectTemp.getNomServiceFr()
                    + "\">"
                    + objectTemp.getNomServiceFr() + " </option>\n";
        }
        code += "</select>";
        return code;
    }

    private List<Service> convertListToServiceList(List<Object[]> liste) {
        List<Service> listeRetour = new ArrayList<Service>();
        for (Object[] item : liste) {
            listeRetour.add(convertItemToService(item));
        }
        return listeRetour;
    }

    private Service convertItemToService(Object[] item) {
        Service serviceRetour = new Service((String) item[1], (String) item[2]);
        serviceRetour.setId((int) item[0]);
        return serviceRetour;
    }

}
