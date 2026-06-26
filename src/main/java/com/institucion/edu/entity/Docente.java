package com.institucion.edu.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;
import jakarta.persistence.OneToOne;
import jakarta.persistence.JoinColumn;

@Entity
@Table(name = "docentes") 
public class Docente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_docente")
    private int idDocente;

    @Column(name = "nombre", length = 50, nullable = false)
    private String nombre;

    @Column(name = "apellido", length = 50, nullable = false)
    private String apellido;

    @Column(name = "dni", length = 8, nullable = false, unique = true)
    private String dni;

    @Column(name = "especialidad", length = 100)
    private String especialidad; 

    @Column(name = "telefono", length = 15)
    private String telefono;

    @OneToOne
    @JoinColumn(name = "id_usuario", nullable = true)
    private Usuario usuario;

    public Docente() {
    }

    public Docente(int idDocente, String nombre, String apellido, String dni, String especialidad, String telefono, Usuario usuario) {
        this.idDocente = idDocente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.especialidad = especialidad;
        this.telefono = telefono;
        this.usuario = usuario;
    }

    public int getIdDocente() {
        return idDocente;
    }
    public void setIdDocente(int idDocente) {
        this.idDocente = idDocente;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public String getDni() {
        return dni;
    }
    public void setDni(String dni) {
        this.dni = dni;
    }
    public String getEspecialidad() { 
        return especialidad;
    }
    public void setEspecialidad(String especialidad) { 
        this.especialidad = especialidad;
    }
    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public Usuario getUsuario() {
        return usuario;
    }
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}