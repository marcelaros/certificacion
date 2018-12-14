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
public class LaboreoParaCultivo {
    private Cultivo cultivo;
    private Laboreo laboreo;
    private MomentoDeLaboreo momentoDeLaboreo;
    private int orden;

    public LaboreoParaCultivo() {
    }

    public LaboreoParaCultivo(Cultivo cultivo, Laboreo laboreo, MomentoDeLaboreo momentoDeLaboreo, int orden) {
        this.cultivo = cultivo;
        this.laboreo = laboreo;
        this.momentoDeLaboreo = momentoDeLaboreo;
        this.orden = orden;
    }

    public Cultivo getCultivo() {
        return cultivo;
    }

    public void setCultivo(Cultivo cultivo) {
        this.cultivo = cultivo;
    }

    public Laboreo getLaboreo() {
        return laboreo;
    }

    public void setLaboreo(Laboreo laboreo) {
        this.laboreo = laboreo;
    }

    public MomentoDeLaboreo getMomentoDeLaboreo() {
        return momentoDeLaboreo;
    }

    public void setMomentoDeLaboreo(MomentoDeLaboreo momentoDeLaboreo) {
        this.momentoDeLaboreo = momentoDeLaboreo;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }

    
    
}
