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
public class Laboreo {
    private int idLaboreo;
    private String nombre;

    public Laboreo() {
    }

    public Laboreo(String nombre) {
        this.nombre = nombre;
    }

    public int getIdLaboreo() {
        return idLaboreo;
    }

    public void setIdLaboreo(int idLaboreo) {
        this.idLaboreo = idLaboreo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
