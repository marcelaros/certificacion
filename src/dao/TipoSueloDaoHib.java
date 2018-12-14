/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.TipoSuelo;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Marcela
 */
public class TipoSueloDaoHib implements TipoSueloDao {
    
    private final SessionFactory sessionFactory;

    public TipoSueloDaoHib(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public List<TipoSuelo> leerTodos() {
        // Abrir una sesión de trabajo
        Session session = sessionFactory.openSession();
        // Obtener todos los objetos de la tabla usando HQL (hibernate query language)
        List<TipoSuelo> lista = session.createQuery( "from TipoSuelo" ).list();
        // Cerrar sesión
        session.close();
        // Retornar la lista
        return lista;
    }
    
}
