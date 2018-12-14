/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Marcela
 */
public class TipoSuelo {
    private int idTipoSuelo;
    private String nombre;

    public TipoSuelo() {
    }

    public TipoSuelo(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTipoSuelo() {
        return idTipoSuelo;
    }

    public void setIdTipoSuelo(int idTipoSuelo) {
        this.idTipoSuelo = idTipoSuelo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Override
    public String toString() {
        return nombre;
    }
    
}
