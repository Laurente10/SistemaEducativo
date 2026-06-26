package com.institucion.edu.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.institucion.edu.entity.Alumno;
import com.institucion.edu.service.AlumnoService;
import jakarta.servlet.http.HttpSession;
import com.institucion.edu.entity.Usuario;

@Controller
@RequestMapping("/alumnos")
public class AlumnoController {

    @Autowired
    private AlumnoService alumnoService;

    @GetMapping
    public String listarAlumnos(Model model, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }

        if (!(u.tieneRol("ADMIN") || u.tieneRol("MATRICULA") || u.tieneRol("DOCENTE"))) {
            return "redirect:/dashboard";
        }
        List<Alumno> lista = alumnoService.listarTodos();
        model.addAttribute("listaAlumnos", lista);
        model.addAttribute("alumno", new Alumno());

        return "alumnos";
    }
    @PostMapping("/guardar")
    public String guardarAlumno(@ModelAttribute("alumno") Alumno alumno, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }
        alumnoService.guardar(alumno);

        return "redirect:/alumnos";
    }    
    @GetMapping("/editar/{id}")
    public String editarAlumno(@PathVariable("id") int id, Model model, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }        
        Alumno alumno = alumnoService.buscarPorId(id);
        List<Alumno> lista = alumnoService.listarTodos();
        
        model.addAttribute("listaAlumnos", lista);
        model.addAttribute("alumno", alumno);
        return "alumnos";
    }    
    @GetMapping("/eliminar/{id}")
    public String eliminarAlumno(@PathVariable("id") int id, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }
        alumnoService.eliminar(id);

        return "redirect:/alumnos";
    }
}