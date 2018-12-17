/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Campo;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Marcela
 */
public class CampoDaoHib implements CampoDao {
    
    private final SessionFactory sessionFactory;

    public CampoDaoHib(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public boolean existeNombre(String nombre) {
        // Abrir una sesión de trabajo
        Session session = sessionFactory.openSession();
        
        // Buscar campo con este nombre
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Campo> query = builder.createQuery(Campo.class);
        Root<Campo> root = query.from(Campo.class);
        query.select(root);
        query.where(builder.equal(root.get("nombre"), nombre));
        Campo campo = session.createQuery(query).uniqueResult();
        //List<Campo> lista = session.createQuery(query).list();
        
        // Cerrar sesión
        session.close();
        
        // Resultado
        return campo!=null;
    }
    
    public void guardarCampo(Campo campo) {
        // Abrir sesión
        Session session = sessionFactory.openSession();        
        // Comenzar transacción
        session.beginTransaction();
        // Guardar objeto en la tabla
        session.save(campo);
        // Finalizar transacción
        session.getTransaction().commit();
        // Cerrar sesión
        session.close();
    }
    
}
