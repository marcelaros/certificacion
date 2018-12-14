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
public class EstadoProyecto {
    private int idEstadoProyecto;
    private String nombre;

    public EstadoProyecto() {
    }

    public EstadoProyecto(String nombre) {
        this.nombre = nombre;
    }

    public int getIdEstadoProyecto() {
        return idEstadoProyecto;
    }

    public void setIdEstadoProyecto(int idEstadoProyecto) {
        this.idEstadoProyecto = idEstadoProyecto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
