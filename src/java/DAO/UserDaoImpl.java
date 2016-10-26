/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Hibernate.Utility;
import Modele.User;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import javax.activation.DataSource;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Melissa
 */
public class UserDaoImpl implements UserDao {

    DataSource data;
    SessionFactory session;

    @Override
    public boolean isValidUser(String username, String password) throws SQLException {
        return true;
    }

    @Override
    @Transactional
    public void addUser(String prenom, String nom, String username, String mdp,
            String sexe, String No_tel, String courriel, Date dateNaissance, String userType,
            String estAnnonceur, String adresse, String serviceid , String nomCompagnie) {
        
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery insert;
        // Si l'utilisateur est une compagnie mais n offre aucun service a la creation
        if (Integer.parseInt(userType)== 2 && !Boolean.parseBoolean(estAnnonceur)) {
            System.out.println(nomCompagnie);
            System.out.println("in insert");
            insert = session.createSQLQuery("INSERT INTO UTILISATEUR("
                    + "ID_SEXE, "
                    + "NOM_UTILISATEUR, "
                    + "MOT_DE_PASSE, "
                    + "NOM, "
                    + "PRENOM, "
                    + "NO_DE_TELEPHONE, "
                    + "COURRIEL, "
                    + "DATE_DE_NAISSANCE, "
                    + "ID_TYPE_UTILISATEUR, "
                    + "ESTANNONCEUR, "
                    + "NOM_COMPAGNIE, "
                    + "ADRESSE_LINE1) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
            
            insert.setParameter(0, Integer.parseInt(sexe));
            insert.setParameter(1, username);
            insert.setParameter(2, mdp);
            insert.setParameter(3, nom);
            insert.setParameter(4, prenom);
            insert.setParameter(5, No_tel);
            insert.setParameter(6, courriel);
            insert.setParameter(7, dateNaissance);
            insert.setParameter(8, Integer.parseInt(userType));
            insert.setParameter(9, Boolean.parseBoolean(estAnnonceur));
            insert.setParameter(10, nomCompagnie);
            insert.setParameter(11, adresse);
            int id = insert.executeUpdate();
            session.getTransaction().commit();
            session.close();
        }
        
        
        // Si l'utilisateur offre pas un service a la creation
        if (Integer.parseInt(userType)== 1 && !Boolean.parseBoolean(estAnnonceur)) {
            System.out.println("utilisateur sans service");
            insert = session.createSQLQuery("INSERT INTO UTILISATEUR("
                    + "ID_SEXE, "
                    + "NOM_UTILISATEUR, "
                    + "MOT_DE_PASSE, "
                    + "NOM, "
                    + "PRENOM, "
                    + "NO_DE_TELEPHONE, "
                    + "COURRIEL, "
                    + "DATE_DE_NAISSANCE, "
                    + "ID_TYPE_UTILISATEUR, "
                    + "ESTANNONCEUR, "
                    + "ADRESSE_LINE1) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            
            insert.setParameter(0, Integer.parseInt(sexe));
            insert.setParameter(1, username);
            insert.setParameter(2, mdp);
            insert.setParameter(3, nom);
            insert.setParameter(4, prenom);
            insert.setParameter(5, No_tel);
            insert.setParameter(6, courriel);
            insert.setParameter(7, dateNaissance);
            insert.setParameter(8, Integer.parseInt(userType));
            insert.setParameter(9, Boolean.parseBoolean(estAnnonceur));
            insert.setParameter(10, adresse);
            int id = insert.executeUpdate();
            System.out.println("id: " + id);
            session.getTransaction().commit();
            session.close();
        }
        
        // Compagnie qui offre un service a la creation 
        if (Integer.parseInt(userType)== 2 && Boolean.parseBoolean(estAnnonceur)) {
            insert = session.createSQLQuery("INSERT INTO UTILISATEUR("
                    + "ID_SEXE, "
                    + "NOM_UTILISATEUR, "
                    + "MOT_DE_PASSE, "
                    + "NOM, "
                    + "PRENOM, "
                    + "NO_DE_TELEPHONE, "
                    + "COURRIEL, "
                    + "DATE_DE_NAISSANCE, "
                    + "ID_TYPE_UTILISATEUR, "
                    + "ESTANNONCEUR, "
                    + "NOM_COMPAGNIE, "
                    + "ADRESSE_LINE1) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
            
            insert.setParameter(0, Integer.parseInt(sexe));
            insert.setParameter(1, username);
            insert.setParameter(2, mdp);
            insert.setParameter(3, nom);
            insert.setParameter(4, prenom);
            insert.setParameter(5, No_tel);
            insert.setParameter(6, courriel);
            insert.setParameter(7, dateNaissance);
            insert.setParameter(8, Integer.parseInt(userType));
            insert.setParameter(9, Boolean.parseBoolean(estAnnonceur));
            insert.setParameter(10, nomCompagnie);
            insert.setParameter(11, adresse);
            int id1 = insert.executeUpdate();
            session.getTransaction().commit();
            
            User newUsr = findUserByUSername(username, session);
            int id = newUsr.getId();
            session.beginTransaction();
            
            SQLQuery insertServiceOffert = session.createSQLQuery("INSERT INTO "
                    + "SERVICE_OFFERTS "
                    + "(ID_UTILISATEUR,"
                    + " ID_SERVICE) VALUES (?,?)");
            insertServiceOffert.setParameter(0, id);
            insertServiceOffert.setParameter(1, Integer.parseInt(serviceid));
            int id11 = insert.executeUpdate();
            session.getTransaction().commit();
            session.close();
        }
        
        
         // Utilisateur qui offre un service a la creation 
        if (Integer.parseInt(userType)== 1 && Boolean.parseBoolean(estAnnonceur)) {
            insert = session.createSQLQuery("INSERT INTO UTILISATEUR("
                    + "ID_SEXE, "
                    + "NOM_UTILISATEUR, "
                    + "MOT_DE_PASSE, "
                    + "NOM, "
                    + "PRENOM, "
                    + "NO_DE_TELEPHONE, "
                    + "COURRIEL, "
                    + "DATE_DE_NAISSANCE, "
                    + "ID_TYPE_UTILISATEUR, "
                    + "ESTANNONCEUR, "
                    + "ADRESSE_LINE1) VALUES (?,?,?,?,?,?,?,?,?,?)");
            
            insert.setParameter(0, Integer.parseInt(sexe));
            insert.setParameter(1, username);
            insert.setParameter(2, mdp);
            insert.setParameter(3, prenom);
            insert.setParameter(4, No_tel);
            insert.setParameter(5, courriel);
            insert.setParameter(6, dateNaissance);
            insert.setParameter(7, Integer.parseInt(userType));
            insert.setParameter(8, Boolean.parseBoolean(estAnnonceur));
            insert.setParameter(10, adresse);
            int id1 = insert.executeUpdate();
            session.getTransaction().commit();
            User newUsr = findUserByUSername(username, session);
            int id = newUsr.getId();
            session.beginTransaction();
            
            SQLQuery insertServiceOffert = session.createSQLQuery("INSERT INTO "
                    + "SERVICE_OFFERTS "
                    + "(ID_UTILISATEUR,"
                    + " ID_SERVICE) VALUES (?,?)");
            insertServiceOffert.setParameter(0, id);
            insertServiceOffert.setParameter(1, Integer.parseInt(serviceid));
            session.getTransaction().commit();
            session.close();
            
        }
        System.out.println("NOUVEAU INSERT FAIT !");
    }

    @Override
    public List<User> getAllUsers() {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getAllUsers = session.createSQLQuery("Select * from utilisateur");
        List<User> listUsers = getAllUsers.list();

        return listUsers;
    }
    
    private User findUserByUSername(String username, Session session){
        session.beginTransaction();
        Query getUser = session.createSQLQuery("Select * from utilisateur u where u.Nom_utilisateur=:username");
        getUser.setParameter("username", username);
        User usr;
        if (getUser.list().size() > 0) {
            Object[] obj = (Object[]) getUser.list().get(0);
            usr = new User();
            usr.setId(Integer.parseInt(obj[0].toString()));
            usr.setLangue(Integer.parseInt(obj[1].toString()));
            usr.setSexe(Integer.parseInt(obj[2].toString()));
            usr.setNom_utilisateur(obj[3].toString());
            usr.setMdp(obj[4].toString());
            usr.setNom(obj[5].toString());
            usr.setPrenom(obj[6].toString());
            usr.setNo_telephone(obj[7].toString());
            usr.setCourriel(obj[8].toString());
            usr.setDate_naissance((Date) obj[9]);
            usr.setType_utilisateur((int) obj[10]);
            
            usr.setEstAnnonceur(((int) obj[11])!=0);
            
            if (obj[15] != null) {
                usr.setDescription(obj[15].toString());
            }
            // usr.setLangue((int) obj[12]);
            //  usr.setType_utilisateur((int) obj[14]);
            //usr.setCodePostal(obj[33].toString());
            usr.setAddresseLine1(obj[34].toString());
            System.out.println(usr.getNom());

            usr.setEstAnnonceur(Boolean.parseBoolean(obj[11].toString()));
            if (obj[15] != null) {
                usr.setDescription(obj[15].toString());
            }
            usr.setType_utilisateur(Integer.parseInt(obj[10].toString()));
            usr.setRatingRespectEngagementVendeur(Double.parseDouble(obj[10].toString()));
            usr.setAddresseLine1(obj[34].toString());
            session.getTransaction().commit();
            return usr;
        }
        return null;
    }

    public User findUser(String username, String password) throws SQLException {
        boolean loginOk = false;
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        Query getAllUsers = session.createSQLQuery("Select * from utilisateur u where u.Nom_utilisateur=:username and u.Mot_de_passe=:password");
        getAllUsers.setParameter("username", username);
        getAllUsers.setParameter("password", password);
        User usr;
        if (getAllUsers.list().size() > 0) {
            Object[] obj = (Object[]) getAllUsers.list().get(0);
            usr = new User();
            usr.setId(Integer.parseInt(obj[0].toString()));
            usr.setLangue(Integer.parseInt(obj[1].toString()));
            usr.setSexe(Integer.parseInt(obj[2].toString()));
            usr.setNom_utilisateur(obj[3].toString());
            usr.setMdp(obj[4].toString());
            usr.setNom(obj[5].toString());
            usr.setPrenom(obj[6].toString());
            usr.setNo_telephone(obj[7].toString());
            usr.setCourriel(obj[8].toString());
            usr.setDate_naissance((Date) obj[9]);
            usr.setType_utilisateur((int) obj[10]);
            
            usr.setEstAnnonceur((boolean) obj[11]);
            
            if (obj[15] != null) {
                usr.setDescription(obj[15].toString());
            }
            // usr.setLangue((int) obj[12]);
            //  usr.setType_utilisateur((int) obj[14]);
            //usr.setCodePostal(obj[33].toString());
            usr.setAddresseLine1(obj[33].toString());
            System.out.println(usr.getNom());
            if (obj[15] != null) {
                usr.setDescription(obj[15].toString());
            }
            usr.setType_utilisateur(Integer.parseInt(obj[10].toString()));
            return usr;
        }

        //System.out.println("Retour:" + id);
        return null;
    }

    public void update(User user) {
        Session session = Utility.getSessionFactory().openSession();

        session.getTransaction().begin();

        SQLQuery query = session.createSQLQuery("update utilisateur set Nom = :Nom, "
                + "Prenom = :Prenom, Courriel = :Courriel, adresse_line1 = :adresse_line1, "
                + "code_postal = :code_postal, No_de_telephone = :No_de_telephone" + " where id_utilisateur = :id_utilisateur");

        query.setParameter("Nom", user.getNom());
        query.setParameter("Prenom", user.getPrenom());
        query.setParameter("id_utilisateur", user.getId());
        query.setParameter("Courriel", user.getCourriel());
        query.setParameter("code_postal", user.getCodePostal());
        query.setParameter("No_de_telephone", user.getNo_telephone());
        query.setParameter("adresse_line1", user.getAddresseLine1());

        int result = query.executeUpdate();
        session.getTransaction().commit();

        session.close();
    }
     public void updatePassworde(String passworde, int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.getTransaction().begin();

        SQLQuery query = session.createSQLQuery("update utilisateur set Mot_de_passe = :Mot_de_passe"
                + " where id_utilisateur = :id_utilisateur");

        query.setParameter("Mot_de_passe", passworde);
        query.setParameter("id_utilisateur", id);

        int result = query.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }
     public User getUser(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();
        SQLQuery getUnUser = session.createSQLQuery("Select * from utilisateur  WHERE id_utilisateur =" + id);
         Object[] obj = (Object[]) getUnUser.list().get(0);
         User user = new User();
         user.setNom(obj[5].toString());
         user.setPrenom(obj[6].toString());

        return user;
}
}
