/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


/**
 *
 * @author Olga
 */
@Entity
@Table(name = "commentaire")
public class Commentaire implements Serializable {

    @Id
    @Column(name = "id_commentaire", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    private int id;
    @Column(name = "id_service", nullable = false)
    @NotNull
    private int idService;
    @Column(name = "id_auteur_commentaire", nullable = false)
    @NotNull
    private int idAuteurCommentaire;
    @Column(name = "id_commente", nullable = false)
    @NotNull
    private int idCommente;
    @Column(name = "id_transaction", nullable = false)
    @NotNull
    private int idTransaction;
    @Column(name = "commentaire", nullable = false)
    @NotNull
    private String commentaire;
    @Column(name = "date_commentaire", nullable = false)
    @NotNull
    private Date dateCommentaire;
    @Column(name = "reply_commentaire", nullable = false)
    private String replyCommentaire;
    @Column(name = "date_commentaire_gmt", nullable = false)
    private Date dateCommentaireGmt;
    @Column(name = "commentaireParClient", nullable = false)
    @NotNull
    private boolean commentaireParClient;
    @Column(name = "rating_ponctualite", nullable = false)
    private double ratingPonctualite;
    @Column(name = "rating_communication", nullable = false)
    private double ratingCommunication;
    @Column(name = "rating_qualite", nullable = false)
    private double ratingQualite;
    @Column(name = "rating_respect_engagement", nullable = false)
    private double ratingRespectEngagement;
    @Column(name = "recommendation", nullable = false)
    @NotNull
    private boolean recommendation;

    public Commentaire() {
    }

    public Commentaire(int idService, int idAuteurCommentaire, int idCommente,
            int idTransaction, String commentaire, Date dateCommentaire,
            String replyCommentaire, Date dateCommentaireGmt,
            boolean commentaireParClient, double ratingPonctualite,
            double ratingCommunication, double ratingQualite,
            double ratingRespectEngagement, boolean recommendation) {

        this.idService = idService;
        this.idAuteurCommentaire = idAuteurCommentaire;
        this.idCommente = idCommente;
        this.idTransaction = idTransaction;
        this.commentaire = commentaire;
        this.dateCommentaire = dateCommentaire;
        this.replyCommentaire = replyCommentaire;
        this.dateCommentaireGmt = dateCommentaireGmt;
        this.commentaireParClient = commentaireParClient;
        this.ratingPonctualite = ratingPonctualite;
        this.ratingCommunication = ratingCommunication;
        this.ratingQualite = ratingQualite;
        this.ratingRespectEngagement = ratingRespectEngagement;
        this.recommendation = recommendation;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public Date getDateCommentaireGmt() {
        return dateCommentaireGmt;
    }

    public void setDateCommentaireGmt(Date dateCommentaireGmt) {
        this.dateCommentaireGmt = dateCommentaireGmt;
    }
    public String getReplyCommentaire() {
        return replyCommentaire;
    }

    public void setReplyCommentaire(String replyCommentaire) {
        this.replyCommentaire = replyCommentaire;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public int getIdAuteurCommentaire() {
        return idAuteurCommentaire;
    }

    public void setIdAuteurCommentaire(int idAuteurCommentaire) {
        this.idAuteurCommentaire = idAuteurCommentaire;
    }

    public int getIdCommente() {
        return idCommente;
    }

    public void setIdCommente(int idCommente) {
        this.idCommente = idCommente;
    }

    public int getIdTransaction() {
        return idTransaction;
    }

    public void setIdTransaction(int idTransaction) {
        this.idTransaction = idTransaction;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public Date getDateCommentaire() {
        return dateCommentaire;
    }

    public void setDateCommentairee(Date dateCommentaire) {
        this.dateCommentaire = dateCommentaire;
    }

    public boolean getCommentaireParClient() {
        return commentaireParClient;
    }

    public void setCommentaireParClient(boolean commentaireParClient) {
        this.commentaireParClient = commentaireParClient;
    }

    public double getRatingPonctualite() {
        return ratingPonctualite;
    }

    public void setRatingPonctualite(double ratingPonctualite) {
        this.ratingPonctualite = ratingPonctualite;
    }

    public double getRatingCommunication() {
        return ratingCommunication;
    }

    public void setRatingCommunication(double ratingCommunication) {
        this.ratingCommunication = ratingCommunication;
    }
     public double getRatingQualite() {
        return ratingQualite;
    }

    public void setRatingQualite(double ratingQualite) {
        this.ratingQualite = ratingQualite;
    }
     public double getRatingRespectEngagement() {
        return ratingRespectEngagement;
    }

    public void setRatingRespectEngagement(double ratingRespectEngagement) {
        this.ratingRespectEngagement = ratingRespectEngagement;
    }
     public boolean getRecommendation() {
        return recommendation;
    }

    public void setRecommendation(boolean recommendationt) {
        this.recommendation = recommendation;
    }

}
