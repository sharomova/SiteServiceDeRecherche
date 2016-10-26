/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

import java.io.Serializable;
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
@Table(name = "services_offerts")
public class ServicesOfferts implements Serializable {
    @Id
    @Column(name = "id_service_offert", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    private int id;
    @Column(name = "id_utilisateur", nullable = false)
    @NotNull
    private int idUtilisateur;
    @Column(name = "id_service", nullable = false)
    @NotNull
    private int idService;
    @Column(name = "serviceMasque", nullable = false)
    @NotNull
    private boolean serviceMasque;

    public ServicesOfferts() {
    }

    public ServicesOfferts(int idUtilisateur, int idService, boolean serviceMasque) {
        this.idService = idService;
        this.idUtilisateur = idUtilisateur;
        this.serviceMasque = serviceMasque;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }

    public boolean getServiceMasque() {
        return serviceMasque;
    }

    public void setServiceMasque(boolean serviceMasque) {
        this.serviceMasque = serviceMasque;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
