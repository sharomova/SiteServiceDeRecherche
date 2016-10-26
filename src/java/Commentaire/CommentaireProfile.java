/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commentaire;

import java.sql.Date;

/**
 *
 * @author Olga
 */
public class CommentaireProfile {
    
    private int id;
  
    private String service;
   
    private String nom;
    
     private String prenom;
    
    private int idCommente;
  
    private int idTransaction;
   
    private String commentaire;
   
    private Date dateCommentaire;
   
    private String replyCommentaire;
   
    private Date dateCommentaireGmt;
  
    private boolean commentaireParClient;
  
    private double ratingPonctualite;
  
    private double ratingCommunication;
   
    private double ratingQualite;
  
    private double ratingRespectEngagement;
   
  
    private boolean recommendation;
   

   

    public CommentaireProfile(String service, String auteurCommentaire, int idCommente,
            int idTransaction, String commentaire, Date dateCommentaire,
            String replyCommentaire, Date dateCommentaireGmt,
            boolean commentaireParClient, double ratingPonctualite,
            double ratingCommunication, double ratingQualite,
            double ratingRespectEngagement, boolean recommendation) {

        this.service = service;
        this.nom= auteurCommentaire;
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

    public CommentaireProfile() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public String getService() {
        return service;
    }

    public void setService(String idService) {
        this.service = idService;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String idAuteurCommentaire) {
        this.nom = idAuteurCommentaire;
    }
    
     public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String idAuteurCommentaire) {
        this.prenom = idAuteurCommentaire;
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
