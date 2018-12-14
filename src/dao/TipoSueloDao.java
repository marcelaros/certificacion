/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.TipoSuelo;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Marcela
 */
public interface TipoSueloDao {
    
    public List<TipoSuelo> leerTodos();
    
}
