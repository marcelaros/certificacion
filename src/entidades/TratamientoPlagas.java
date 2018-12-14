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
public class TratamientoPlagas {
    private int idTratamientoPlagas;
    private String nombre;
    private double dosis;
    private Plaga plaga;
    private Agroquimico agroquimico;

    public TratamientoPlagas() {
    }

    public TratamientoPlagas(String nombre, double dosis, Plaga plaga, Agroquimico agroquimico) {
        this.nombre = nombre;
        this.dosis = dosis;
        this.plaga = plaga;
        this.agroquimico = agroquimico;
    }

    public int getIdTratamientoPlagas() {
        return idTratamientoPlagas;
    }

    public void setIdTratamientoPlagas(int idTratamientoPlagas) {
        this.idTratamientoPlagas = idTratamientoPlagas;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getDosis() {
        return dosis;
    }

    public void setDosis(double dosis) {
        this.dosis = dosis;
    }

    public Plaga getPlaga() {
        return plaga;
    }

    public void setPlaga(Plaga plaga) {
        this.plaga = plaga;
    }

    public Agroquimico getAgroquimico() {
        return agroquimico;
    }

    public void setAgroquimico(Agroquimico agroquimico) {
        this.agroquimico = agroquimico;
    }
    
    
}
