/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modele.User;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Melissa
 */
public interface UserDao {

    public boolean isValidUser(String username, String password)throws SQLException;
    public void addUser(String prenom, String nom, String username, String mdp, String sexe, String No_tel, String courriel, Date dateNaissance, String userType,
    String estAnnonceur, String adresse,String serviceName , String nomCompagnie);
    public List<User> getAllUsers();
    
}
