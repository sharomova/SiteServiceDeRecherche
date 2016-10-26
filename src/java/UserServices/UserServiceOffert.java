/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserServices;

import Modele.ServicesOfferts;
import java.util.List;

/**
 *
 * @author Olga
 */
public interface UserServiceOffert {

    public List<ServicesOfferts> getAllService();

    public void addService(String titre, String description, int idService, int idUser);

    public void updateService(ServicesOfferts serviceOffert);

    public void deletService(ServicesOfferts serviceOffert);

    public ServicesOfferts getUnService(int id);

    public List<ServicesOfferts> getAllServiceDUneUtilisateur(int id);
}
