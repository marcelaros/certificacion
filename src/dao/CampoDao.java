/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Campo;

/**
 *
 * @author Marcela
 */
public interface CampoDao {
    
    public boolean existeNombre(String nombre);
    
    public void guardarCampo(Campo campo);
    
}
