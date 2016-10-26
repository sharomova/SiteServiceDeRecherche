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
import javax.validation.constraints.Size;

/**
 *
 * @author Melissa
 */
@Entity
@Table(name = "Utilisateur")
public class User implements Serializable {

    @Column(name = "Nom", nullable = false)
    private String nom;
    @Column(name = "Prenom", nullable = false)
    private String prenom;
    @Column(name = "Nom_utilisateur", nullable = false)
    @Size(min = 2, max = 10)
    @NotNull
    private String nom_utilisateur;
    @Size(min = 2, max = 10)
    @NotNull
    @Column(name = "Mot_de_passe", nullable = false)
    private String mdp;
    @Column(name = "Courriel", nullable = false)
    private String courriel;
    @Column(name = "id_Sexe", nullable = false)
    private int sexe;
    @Column(name = "id_langue", nullable = false)
    private int langue;
    @Column(name = "No_de_telephone", nullable = false)
    private String no_telephone;
    @Column(name = "Date_de_naissance", nullable = false)
    private Date date_naissance;
    @Column(name = "id_type_utilisateur", nullable = false)
    private int type_utilisateur;
    @Column(name = "estAnnonceur", nullable = false)
    private boolean estAnnonceur;
    @Column(name = "description_utilisateur", nullable = false)
    private String description;
    @Column(name = "adresse_line1", nullable = false)
    private String addresse_line1;
    @Column(name = "adresse_line2", nullable = false)
    private String addresse_line2;
    @Column(name = "code_postal", nullable = false)
    private String code_postal;
    @Column(name = "rating_respect_engagement_vendeur", nullable = false)
    private double rating_respect_engagement_vendeur;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    public User() {
    }

    public User(String nom, String prenom, String nom_utilisateur, String mdp) {
        this.nom = nom;
        this.prenom = prenom;
        this.nom_utilisateur = nom_utilisateur;
        this.mdp = mdp;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }
     public double getRatingRespectEngagementVendeur() {
        return rating_respect_engagement_vendeur;
    }

    public void setRatingRespectEngagementVendeur(double rating) {
        this.rating_respect_engagement_vendeur = rating;
    }

    public String getNom_utilisateur() {
        return nom_utilisateur;
    }

    public String getMdp() {
        return mdp;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setNom_utilisateur(String nom_utilisateur) {
        this.nom_utilisateur = nom_utilisateur;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public String getCodePostal() {
        return code_postal;
    }

    public void setCodePostal(String code) {
        this.code_postal = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCourriel(String courriel) {
        this.courriel = courriel;
    }

    public void setSexe(int sexe) {
        this.sexe = sexe;
    }

    public void setLangue(int langue) {
        this.langue = langue;
    }

    public void setNo_telephone(String no_telephone) {
        this.no_telephone = no_telephone;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public void setType_utilisateur(int type_utilisateur) {
        this.type_utilisateur = type_utilisateur;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setAddresseLine1(String addresse) {
        this.addresse_line1 = addresse;
    }

    public String getCourriel() {
        return courriel;
    }

    public int getSexe() {
        return sexe;
    }

    public int getLangue() {
        return langue;
    }

    public String getNo_telephone() {
        return no_telephone;
    }

    public Date getDate_naissance() {
        return date_naissance;
    }

    public int getType_utilisateur() {
        return type_utilisateur;
    }

    public String getDescription() {
        return description;
    }

    public String getAddresseLine1() {
        return addresse_line1;
    }

    public String getAddresseLine2() {
        return addresse_line2;
    }

    public void setAddresseLine2(String addresse) {
        this.addresse_line2 = addresse;
    }

    public boolean getEstAnnonceur() {
        return estAnnonceur;
    }

    public void setEstAnnonceur(boolean estAnnonceur) {
        this.estAnnonceur = estAnnonceur;
    }

}
