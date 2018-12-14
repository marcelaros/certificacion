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
public class Lote {
    private int idLote;
    private int nroLote;
    private double superficie;
    private TipoSuelo tipoSuelo;
    private Campo campo;

    public Lote() {
    }

    public Lote(Campo campo, int nroLote, double superficie, TipoSuelo tipoSuelo) {
        this.campo      = campo;
        this.nroLote    = nroLote;
        this.superficie = superficie;
        this.tipoSuelo  = tipoSuelo;
    }

    public int getIdLote() {
        return idLote;
    }

    public void setIdLote(int idLote) {
        this.idLote = idLote;
    }

    public int getNroLote() {
        return nroLote;
    }

    public void setNroLote(int nroLote) {
        this.nroLote = nroLote;
    }

    public double getSuperficie() {
        return superficie;
    }

    public void setSuperficie(double superficie) {
        this.superficie = superficie;
    }

    public TipoSuelo getTipoSuelo() {
        return tipoSuelo;
    }

    public void setTipoSuelo(TipoSuelo tipoSuelo) {
        this.tipoSuelo = tipoSuelo;
    }

    public Campo getCampo() {
        return campo;
    }

    public void setCampo(Campo campo) {
        this.campo = campo;
    }
    
    
}
