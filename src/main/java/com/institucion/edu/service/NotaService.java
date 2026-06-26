package com.institucion.edu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.institucion.edu.entity.Nota;
import com.institucion.edu.repository.NotaRepository;

@Service
public class NotaService {

    @Autowired
    private NotaRepository notaRepository;
  
    public List<Nota> listarTodas() {
        return notaRepository.findAll();
    }
    
    public void guardar(Nota nota) {       
        nota.calcularNotaFinal();              
        notaRepository.save(nota);
    }
   
    public Nota buscarPorId(int id) {
        return notaRepository.findById(id).orElse(null);
    }
   
    public void eliminar(int id) {
        notaRepository.deleteById(id);
    }
    
    public List<Nota> listarPorUsuario(int idUsuario){
        return notaRepository.findByAlumnoUsuarioIdUsuario(idUsuario);
    }
}