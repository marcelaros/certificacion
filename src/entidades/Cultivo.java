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
public class Cultivo {
    private int idCultivo;
    private String nombre;
    private TipoSuelo tipoSuelo;

    public Cultivo() {
    }

    public Cultivo(String nombre, TipoSuelo tipoSuelo) {
        this.nombre = nombre;
        this.tipoSuelo = tipoSuelo;
    }

    public int getIdCultivo() {
        return idCultivo;
    }

    public void setIdCultivo(int idCultivo) {
        this.idCultivo = idCultivo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public TipoSuelo getTipoSuelo() {
        return tipoSuelo;
    }

    public void setTipoSuelo(TipoSuelo tipoSuelo) {
        this.tipoSuelo = tipoSuelo;
    }
    
    
    
}
