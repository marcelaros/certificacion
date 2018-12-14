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
public class Agroquimico {
    private int idAgroquimico;
    private String nombre;

    public Agroquimico() {
    }

    public Agroquimico(String nombre) {
        this.nombre = nombre;
    }

    public int getIdAgroquimico() {
        return idAgroquimico;
    }

    public void setIdAgroquimico(int idAgroquimico) {
        this.idAgroquimico = idAgroquimico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
