/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestores;

import dao.CampoDaoHib;
import dao.EstadoCampoDaoHib;
import entidades.Campo;
import entidades.Lote;
import entidades.TipoSuelo;
import dao.TipoSueloDaoHib;
import entidades.EstadoCampo;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import static javax.swing.JOptionPane.INFORMATION_MESSAGE;
import org.hibernate.SessionFactory;

/**
 *
 * @author Marcela
 */
public class GestorCampo {
    private Campo campo;
    private List<TipoSuelo> tiposSuelo;
    private SessionFactory sessionFactory;

    public GestorCampo() {
        this.campo =  new Campo();
        this.tiposSuelo = new ArrayList<>();
    }

    public GestorCampo(SessionFactory sessionFactory) {
        this.campo =  new Campo();
        this.tiposSuelo = new ArrayList<>();
        this.sessionFactory = sessionFactory;
    }
    
    public List<TipoSuelo> getTiposSuelo() {
        return tiposSuelo;
    }

    public Campo getCampo() {
        return campo;
    }

    public void setCampo(Campo campo) {
        this.campo = campo;
    }

    public void setTiposSuelo(List<TipoSuelo> tiposSuelo) {
        this.tiposSuelo = tiposSuelo;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public void leerTiposSuelo() {
        // Crear objeto DAO para interface con base de datos
        TipoSueloDaoHib dao = new TipoSueloDaoHib(this.sessionFactory);
        // Pedirle los datos guardados en la tabla
        this.tiposSuelo = dao.leerTodos();
    }
    
    public boolean existeNombre (String nombre) {
        // Crear objeto DAO para interface con base de datos
        CampoDaoHib dao = new CampoDaoHib(this.sessionFactory);
    
        // Verificar si ya se cargó un campo con este nombre
        return dao.existeNombre(nombre);
    }
    
    public void setNombreCampo(String nombre) {
        campo.setNombre(nombre);
    }
    
    public void setSuperficieCampo(double superficie) {
        campo.setSuperficie(superficie);
    }
    
    public boolean existeLote(int lote) {
        // Verifica si ya existe este lote en el campo
        return campo.existeLote(lote);
    }
           
    public void agregarLote(Lote lote) {
        campo.agregarLote(lote);
    }
            
    public Lote loteEnPosicion(int index) {
        return campo.loteEnPosicion(index);
    }
    
    public void borrarLoteEnPosicion(int index) {
        campo.borrarLoteEnPosicion(index);
    }
    
    public int cantidadDeLotes() {
        return this.campo.getLotes().size();
    }
    
    public boolean superficieCorrecta() {
        return campo.superficieCorrecta();
    }
    
    public EstadoCampo estadoCreado() {
        // Crear objeto DAO para interface con base de datos
        EstadoCampoDaoHib dao = new EstadoCampoDaoHib(this.sessionFactory);    
        
        // Obtener estado "CREADO"
        return dao.estadoCreado();
    }
    
    public void guardarCampo() {
        // Definir estado "CREADO"
        campo.setEstadoCampo(this.estadoCreado());
        
        // Pasar nombre a mayúsculas
        campo.setNombre(campo.getNombre().toUpperCase());
        
        // Crear objeto DAO para interface con base de datos
        CampoDaoHib dao = new CampoDaoHib(this.sessionFactory);    
        
        // Guardar campo y lotes (se guardadn porque definí lazy="false")
        dao.guardarCampo(campo);
    }
    
    public void campoNuevo() {
        campo = new Campo();
    }
    
    public void run() {
        // Leer tipos de suelo para mostrar en el combo
        this.leerTiposSuelo();
        
        // Mostrar la pantalla para cargar datos
        RegistrarCampo registra = new RegistrarCampo(null, true, this);
        registra.setVisible(true);
                
    }
    
    public void cerrarSesion() {
        this.sessionFactory.close();
    }

}
