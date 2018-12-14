/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Lote;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Marcela
 */
public class LoteDaoHib implements LoteDao {
    
    private final SessionFactory sessionFactory;

    public LoteDaoHib(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public void guardarLote(Lote lote) {
        // Abrir sesión
        Session session = sessionFactory.openSession();
        // Comenzar transacción
        session.beginTransaction();
        // Guardar objeto en la tabla
        session.save(lote);
        // Finalizar transacción
        session.getTransaction().commit();
        // Cerrar sesión
        session.close();
    }
}
