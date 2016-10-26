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
@Table(name = "type_service")
public class Service implements Serializable {

    @Id
    @Column(name = "id_type_service", nullable = false)
    private int id;

    @Column(name = "Nom_service_fr", nullable = false)
    @NotNull
    private String nomServiceFr;
    @Column(name = "Nom_service_ang", nullable = false)
    @NotNull
    private String nomServiceAng;

    public Service() {
    }

    public Service(String nom_service_fr, String nom_service_ang) {
        this.nomServiceAng = nom_service_ang;
        this.nomServiceFr = nom_service_fr;
    }

    public String getNomServiceFr() {
        return nomServiceFr;
    }

    public void setNomServiceFr(String nomServiceFr) {
        this.nomServiceFr = nomServiceFr;
    }

    public String getNomServiceAng() {
        return nomServiceAng;
    }

    public void setNomServiceAng(String nomServiceAng) {
        this.nomServiceAng = nomServiceAng;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
