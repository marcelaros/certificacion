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
public class Plaga {
    private int idPlaga;
    private String nombre;

    public Plaga() {
    }

    public Plaga(String nombre) {
        this.nombre = nombre;
    }

    public int getIdPlaga() {
        return idPlaga;
    }

    public void setIdPlaga(int idPlaga) {
        this.idPlaga = idPlaga;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
