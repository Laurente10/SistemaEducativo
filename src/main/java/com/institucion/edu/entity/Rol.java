package com.institucion.edu.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "roles") 
public class Rol {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_role") 
    private int idRole;

    @Column(name = "nombre", nullable = false, length = 50) 
    private String nombre;

    public Rol() {
    }
    
    public Rol(int idRole, String nombre) {
        this.idRole = idRole;
        this.nombre = nombre;
    }
    
    public int getIdRole() {
        return idRole;
    }
    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}