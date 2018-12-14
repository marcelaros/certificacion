/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.time.LocalDate;

/**
 *
 * @author Marcela
 */
public class ProyectoCultivo {
    private int idProyectoCultivo;
    private LocalDate fechaInicio;
    private LocalDate fechaFin;
    private Lote lote;
    private Cultivo cultivo;
    private EstadoProyecto estadoProyecto;

    public ProyectoCultivo() {
    }

    public ProyectoCultivo(LocalDate fechaInicio, LocalDate fechaFin, Lote lote, Cultivo cultivo, EstadoProyecto estadoProyecto) {
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.lote = lote;
        this.cultivo = cultivo;
        this.estadoProyecto = estadoProyecto;
    }

    public int getIdProyectoCultivo() {
        return idProyectoCultivo;
    }

    public void setIdProyectoCultivo(int idProyectoCultivo) {
        this.idProyectoCultivo = idProyectoCultivo;
    }

    public LocalDate getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(LocalDate fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public LocalDate getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(LocalDate fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Lote getLote() {
        return lote;
    }

    public void setLote(Lote lote) {
        this.lote = lote;
    }

    public Cultivo getCultivo() {
        return cultivo;
    }

    public void setCultivo(Cultivo cultivo) {
        this.cultivo = cultivo;
    }

    public EstadoProyecto getEstadoProyecto() {
        return estadoProyecto;
    }

    public void setEstadoProyecto(EstadoProyecto estadoProyecto) {
        this.estadoProyecto = estadoProyecto;
    }
    
    
    
}
