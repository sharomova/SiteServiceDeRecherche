/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Annonce;

import Modele.Annonce;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Olga
 */
public interface AnnonceDao {
    
     public List<Annonce> getAllAnnonce();

    public void addAnnonce(int idAnnonceur, int idServiceOffert, String titre,
            String description, Date date, Date dateAnnonceGmt, boolean typeAnnonce);

    public void updateAnnonce(Annonce annonce);

    public void deletAnnonce(Annonce annonce);

    public Annonce getUnAnnonce(int id);
    
    public List<Annonce> getAllAnnonceDUneUser(int id);
    
}
