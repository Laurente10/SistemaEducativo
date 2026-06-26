package com.institucion.edu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.institucion.edu.entity.Docente;
import com.institucion.edu.repository.DocenteRepository;

@Service
public class DocenteService {

    @Autowired
    private DocenteRepository docenteRepository;

    public List<Docente> listarTodos() {
        return docenteRepository.findAll();
    } 
    public Docente guardar(Docente docente) {
        return docenteRepository.save(docente);
    }  
    public Docente buscarPorId(int id) {
        return docenteRepository.findById(id).orElse(null);
    } 
    public void eliminar(int id) {
        docenteRepository.deleteById(id);
    }
}