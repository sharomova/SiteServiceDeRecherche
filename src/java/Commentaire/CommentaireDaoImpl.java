/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commentaire;

import Hibernate.Utility;
import Modele.Commentaire;

import java.util.List;
import javax.activation.DataSource;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Olga
 */
public class CommentaireDaoImpl implements CommentaireDao {

    DataSource data;
    SessionFactory session;

    @Override
    public void addCommentaire(Commentaire commentaire) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();

        SQLQuery insertQuery = session.createSQLQuery(""
                + "INSERT INTO commentaire(id_service, id_auteur_commentaire, id_commente, "
                + " id_transaction, commentaire, date_commentaire, "
                + "reply_commentaire, date_commentaire_gmt, "
                + "commentaireParClient, rating_ponctualite, rating_communication, "
                + "rating_qualite, rating_respect_engagement, "
                + "recommendation)VALUES(?,?,?)");
        insertQuery.setParameter(0, commentaire.getIdService());
        insertQuery.setParameter(1, commentaire.getIdAuteurCommentaire());
        insertQuery.setParameter(2, commentaire.getIdCommente());
        insertQuery.setParameter(3, commentaire.getIdTransaction());
        insertQuery.setParameter(4, commentaire.getCommentaire());
        insertQuery.setParameter(5, commentaire.getDateCommentaire());
        insertQuery.setParameter(6, commentaire.getReplyCommentaire());
        insertQuery.setParameter(7, commentaire.getDateCommentaireGmt());
        insertQuery.setParameter(8, commentaire.getCommentaireParClient());
        insertQuery.setParameter(9, commentaire.getRatingPonctualite());
        insertQuery.setParameter(10, commentaire.getRatingCommunication());
        insertQuery.setParameter(11, commentaire.getRatingQualite());
        insertQuery.setParameter(12, commentaire.getRatingRespectEngagement());
        insertQuery.setParameter(13, commentaire.getRecommendation());
        insertQuery.executeUpdate();
        session.getTransaction().commit();

        int id = (Integer) session.save(commentaire);
        System.out.println(id + "kkkkkk");
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void deletCommentaire(Commentaire commentaire) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Commentaire> getAllCommentaireDUneUtilisateur(int id) {
        Session session = Utility.getSessionFactory().openSession();
        session.beginTransaction();

        List<Commentaire> commentaire = (List<Commentaire>) session.createSQLQuery(
                "Select * from commentaire where id_commente = " + id)
                .addEntity(Commentaire.class).list();

        return commentaire;

    }

}
