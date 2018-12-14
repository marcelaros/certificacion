/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import gestores.GestorCampo;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

/**
 *
 * @author Marcela
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // SessionFactory: una sola para toda la aplicación
        StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure("hibernate/hibernate.cfg.xml") // indicar dónde está hibernate.cfg.xml
                .build();
        SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

        // Crear una instancia del gestor y ejecutarla
        GestorCampo gestor = new GestorCampo(sessionFactory);
        gestor.run();        
        
    }
    
}
