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
public class EstadoCampo {
    private int idEstadoCampo;
    private String nombre;

    public EstadoCampo() {
    }

    public EstadoCampo(String nombre) {
        this.nombre = nombre;
    }

    public int getIdEstadoCampo() {
        return idEstadoCampo;
    }

    public void setIdEstadoCampo(int idEstadoCampo) {
        this.idEstadoCampo = idEstadoCampo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
