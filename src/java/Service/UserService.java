/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Modele.Service;
import Modele.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Melissa
 */
public interface UserService {

    public List<Service> getAllService();

    public Service getTypeService(int id);

    public List<Service> getAllServiceDUneUser(int id);

}
