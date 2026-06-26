package com.institucion.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.institucion.edu.entity.Rol;

@Repository
public interface RolRepository extends JpaRepository<Rol, Integer> {
   
}