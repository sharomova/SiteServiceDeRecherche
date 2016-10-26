/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hibernate;

import Modele.Annonce;
import Modele.Service;
import Modele.ServicesOfferts;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;



/**
 *
 * @author Melissa
 */
@SuppressWarnings("deprecation")
public class Utility {
    
    private static final SessionFactory sessionFac = initializeSessionFactory();

    private static SessionFactory initializeSessionFactory() {
        try
        {
            Configuration configuration = new Configuration();
                configuration.addAnnotatedClass(ServicesOfferts.class);
                configuration.addAnnotatedClass(Service.class);
                 configuration.addAnnotatedClass(Annonce.class);
            configuration.configure();
            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
            configuration.getProperties()).build();
            return configuration.buildSessionFactory(serviceRegistry);
        }
        catch(Throwable ex)
        {
             throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFac;
    }
    
}
