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
public class MomentoDeLaboreo {
    private int idMomentoDeLaboreo;
    private String nombre;

    public MomentoDeLaboreo() {
    }

    public MomentoDeLaboreo(String nombre) {
        this.nombre = nombre;
    }

    public int getIdMomentoDeLaboreo() {
        return idMomentoDeLaboreo;
    }

    public void setIdMomentoDeLaboreo(int idMomentoDeLaboreo) {
        this.idMomentoDeLaboreo = idMomentoDeLaboreo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
