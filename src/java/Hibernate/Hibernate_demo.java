

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Annonce.AnnonceDaoImpl;
import Commentaire.CommentaireDaoImpl;
import Commentaire.CommentaireProfile;
import DAO.UserDaoImpl;
import Modele.*;
import Service.UserService;
import Service.UserServiceImpl;
import UserServices.UserServiceOffertImpl;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Melissa
 */
public class Hibernate_demo {

    @SuppressWarnings("unused")
    public static void main(String[] args) {
        Hibernate_demo demo = new Hibernate_demo();
        //UserDaoImpl uDao = new UserDaoImpl();
        UserServiceImpl im = new UserServiceImpl();
        //List<Service> listSer = im.getAllServicesByTerm("co");

//        for (int i = 0; i < listSer.size(); i++) {
//            System.out.println("Commencant par co: " + listSer.get(i).getNomServiceFr());
//        }

       // uDao.addUser("Christelle", "Sissoko", "mel07", "Car");
       // UserServiceImpl ser = new UserServiceImpl();
        // ser.getAllService();
        UserServiceOffertImpl serviceOffert = new UserServiceOffertImpl();
        UserServiceImpl typeserviceImpl = new UserServiceImpl();
        List<Service> typeService = new ArrayList<Service>();
        List<Annonce> annonceListe = new ArrayList<Annonce>();
        AnnonceDaoImpl annonceimpl = new AnnonceDaoImpl();

        List<ServicesOfferts> lesservice = serviceOffert.getAllServiceDUneUtilisateur(3);
      //  System.out.println("fffffffffff" + lesservice.size());
        ServicesOfferts les = serviceOffert.getUnService(3);
        //System.out.println("sssssssss" + les.getIdService());
typeService = typeserviceImpl.getAllService();

      
        for (int i = 0; i < typeService.size(); i++) {
            
             //System.out.println("rrr11111" + typeService.get(i).getNomServiceAng());

        }
       
        CommentaireDaoImpl commentaire = new CommentaireDaoImpl();
        List<Commentaire> listeCommentaire = new ArrayList<Commentaire>();
        listeCommentaire = commentaire.getAllCommentaireDUneUtilisateur(5);
        List<CommentaireProfile> profCom = new ArrayList<CommentaireProfile>();
        User nomCom = new User();
        UserDaoImpl uImpl = new UserDaoImpl();
        User user = new User();
        user.setAddresseLine1("rue RTTTT");
        user.setCodePostal("h2l3k1");
        user.setCourriel("ksjdfhg@jhghg.tr");
        user.setId(3);
        user.setNo_telephone("12345566777");
        user.setNom("Pole");
        user.setPrenom("Jouille");
        uImpl.update(user);
        for (int i = 0; i < listeCommentaire.size(); i++) {
            profCom.get(i).setCommentaire(listeCommentaire.get(i).getCommentaire());
           // nomCom = uImpl.getUser(listeCommentaire.get(i).getIdAuteurCommentaire());
            profCom.get(i).setNom(nomCom.getNom());
            profCom.get(i).setPrenom(nomCom.getPrenom());

        }
        System.out.println("rrr11111" +   profCom.get(0).getPrenom());
    }
}
