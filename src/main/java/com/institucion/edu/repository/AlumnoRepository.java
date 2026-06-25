package com.institucion.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.institucion.edu.entity.Alumno;

@Repository
public interface AlumnoRepository extends JpaRepository<Alumno, Integer> {
	
	List<Alumno> findByUsuarioIsNull();
}

