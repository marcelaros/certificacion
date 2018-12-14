/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marcela
 */
public class Campo {
    private int idCampo;
    private String nombre;
    private double superficie;
    private EstadoCampo estadoCampo;
    private List<Lote> lotes;

    public Campo() {
        this.lotes = new ArrayList<>();
    }

    public Campo(String nombre, EstadoCampo estadoCampo) {
        this.nombre = nombre;
        this.estadoCampo = estadoCampo;
        this.lotes = new ArrayList<>();
    }

    public int getIdCampo() {
        return idCampo;
    }

    public void setIdCampo(int idCampo) {
        this.idCampo = idCampo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getSuperficie() {
        return superficie;
    }

    public void setSuperficie(double superficie) {
        this.superficie = superficie;
    }

    public EstadoCampo getEstadoCampo() {
        return estadoCampo;
    }

    public void setEstadoCampo(EstadoCampo estadoCampo) {
        this.estadoCampo = estadoCampo;
    }

    public List<Lote> getLotes() {
        return lotes;
    }

    public void setLotes(List<Lote> lotes) {
        this.lotes = lotes;
    }
    
    public boolean existeLote(int lote) {
        for (Lote l: lotes) {
            if (l.getNroLote()==lote) {
              return true;  
            }
        }
        return false;
    }
    
    public void agregarLote(Lote lote) {
        lotes.add(lote);
    }
    
    public Lote loteEnPosicion(int index) {
        return lotes.get(index);
    }
    
    public void borrarLoteEnPosicion(int index) {
        lotes.remove(index);
    }
    
    public boolean superficieCorrecta() {
        double sup = 0;
        for (Lote lote : lotes) {
            sup = sup + lote.getSuperficie();
        }
        return sup==this.superficie;
    }
}
