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
@Table(name="annonce")
public class Annonce implements Serializable{
    
     @Id
    @Column(name = "id_annonce", nullable = false)
    private int id;
    @Column(name="id_annonceur", nullable=false)
    @NotNull
    private int idAnnonceur;
    @Column(name="id_service_offerts", nullable=false)
    @NotNull
    private int idServiceOfferts;
    @Column(name="titre", nullable=false)
    @NotNull
    private String titre;
    @Column(name="description", nullable=false)
    @NotNull
    private String description;
    @Column(name="date", nullable=false)
    private Date date;
    @Column(name="date_annonce_gmt", nullable=false)
    private Date dateAnnonceGmt;
    @Column(name="type_annonce", nullable=false)
    @NotNull
    private boolean typeAnnonce;
  

    public Annonce() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
     public int getIdAnnonceur() {
        return idAnnonceur;
    }
    public void setIdAnnonceur(int idAnnonceur) {
        this.idAnnonceur = idAnnonceur;
    }
     public int getIdServiceOfferts() {
        return idServiceOfferts;
    }
    public void setIdServiceOfferts(int idServiceOfferts) {
        this.idServiceOfferts = idServiceOfferts;
    }
     public String getTitre() {
        return titre;
    }
    public void setTitre(String titre) {
        this.titre = titre;
    }
     public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
     public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
     public Date getDateAnnonceGmt() {
        return dateAnnonceGmt;
    }
    public void setDateAnnonceGmt(Date dateAnnonceGmt) {
        this.dateAnnonceGmt = dateAnnonceGmt;
    }
     public boolean getTypeAnnonce() {
        return typeAnnonce;
    }
    public void setTypeAnnonce(boolean typeAnnonce) {
        this.typeAnnonce = typeAnnonce;
    }
}
