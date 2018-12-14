/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.EstadoCampo;
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
public class EstadoCampoDaoHib implements EstadoCampoDao {
    
    private final SessionFactory sessionFactory;

    public EstadoCampoDaoHib(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public EstadoCampo estadoCreado() {
        // Abrir una sesión de trabajo
        Session session = sessionFactory.openSession();
        
        // Obtener estado "CREADO"
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<EstadoCampo> query = builder.createQuery(EstadoCampo.class);
        Root<EstadoCampo> root = query.from(EstadoCampo.class);
        query.select(root);
        query.where(builder.equal(root.get("nombre"), "CREADO"));
        EstadoCampo estado = session.createQuery(query).uniqueResult();
        
        // Cerrar sesión
        session.close();
        
        // Retornar objeto
        return estado;
    }
    
}
