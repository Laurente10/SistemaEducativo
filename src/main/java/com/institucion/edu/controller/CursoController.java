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
import com.institucion.edu.entity.Curso;
import com.institucion.edu.entity.Usuario;
import com.institucion.edu.service.CursoService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cursos")
public class CursoController {

    @Autowired
    private CursoService cursoService;

    @GetMapping
    public String listarCursos(Model model, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
       
        if (!(u.tieneRol("ADMIN") || u.tieneRol("MATRICULA") || u.tieneRol("DOCENTE"))) {

            return "redirect:/dashboard";
        }

        List<Curso> lista = cursoService.listarTodos();
        model.addAttribute("listaCursos", lista);
        model.addAttribute("curso", new Curso());

        return "cursos";
    }
    @PostMapping("/guardar")
    public String guardarCurso( @ModelAttribute("curso") Curso curso, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }
        cursoService.guardar(curso);

        return "redirect:/cursos";
    }    
    @GetMapping("/editar/{id}")
    public String editarCurso(@PathVariable("id") int id, Model model, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");

        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }
        
        Curso curso = cursoService.buscarPorId(id);
        List<Curso> lista = cursoService.listarTodos();       
        model.addAttribute("listaCursos", lista);
        model.addAttribute("curso", curso); // Envía el objeto lleno para que el JSP lo cargue
        return "cursos";
    }   
    @GetMapping("/eliminar/{id}")
    public String eliminarCurso(@PathVariable("id") int id, HttpSession session) {

        Usuario u = (Usuario) session.getAttribute("usuarioSession");
        if (u == null) {
            return "redirect:/login";
        }
        if (!u.tieneRol("ADMIN")) {
            return "redirect:/dashboard";
        }
        cursoService.eliminar(id);

        return "redirect:/cursos";
    }
}