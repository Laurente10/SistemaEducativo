package com.institucion.edu.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;

@Entity
@Table(name = "notas") 
public class Nota {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nota")
    private int idNota;
   
    @ManyToOne
    @JoinColumn(name = "id_alumno", nullable = false)
    private Alumno alumno;
   
    @ManyToOne
    @JoinColumn(name = "id_curso", nullable = false)
    private Curso curso;
    
    @ManyToOne
    @JoinColumn(name = "id_docente", nullable = false)
    private Docente docente;

    @Column(name = "parcial", nullable = false)
    private double parcial;

    @Column(name = "final", nullable = false)
    private double nFinal;

    @Column(name = "labs", nullable = false)
    private double labs;

    @Column(name = "nota_final", nullable = false)
    private double notaFinal;
   
    public Nota() {
    }

    public Nota(int idNota, Alumno alumno, Curso curso, Docente docente, double parcial, double nFinal, double labs, double notaFinal) {
        this.idNota = idNota;
        this.alumno = alumno;
        this.curso = curso;
        this.docente = docente;
        this.parcial = parcial;
        this.nFinal = nFinal;
        this.labs = labs;
        this.notaFinal = notaFinal;
    }  
    public void calcularNotaFinal() {        
        this.notaFinal = (this.parcial * 0.30) + (this.nFinal * 0.30) + (this.labs * 0.40);               
        this.notaFinal = Math.round(this.notaFinal * 100.0) / 100.0;
    }
   
    public int getIdNota() {
        return idNota;
    }
    public void setIdNota(int idNota) {
        this.idNota = idNota;
    }
    public Alumno getAlumno() {
        return alumno;
    }
    public void setAlumno(Alumno alumno) {
        this.alumno = alumno;
    }
    public Curso getCurso() {
        return curso;
    }
    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    public Docente getDocente() {
        return docente;
    }
    public void setDocente(Docente docente) {
        this.docente = docente;
    }
    public double getParcial() {
        return parcial;
    }
    public void setParcial(double parcial) {
        this.parcial = parcial;
    }
    public double getnFinal() {
        return nFinal;
    }
    public void setnFinal(double nFinal) {
        this.nFinal = nFinal;
    }
    public double getLabs() {
        return labs;
    }
    public void setLabs(double labs) {
        this.labs = labs;
    }
    public double getNotaFinal() {
        return notaFinal;
    }
    public void setNotaFinal(double notaFinal) {
        this.notaFinal = notaFinal;
    }
}