package com.grupo3.proyecto.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grupo3.proyecto.models.Tarea;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.services.TareaService;
import com.grupo3.proyecto.services.UserService;


@Controller
public class TareaController {
    
    private final TareaService tService;
    private final UserService uService;

    public TareaController(TareaService tService, UserService uService){
        this.tService = tService;
        this.uService = uService;
    }


    // Home de tarea
    @GetMapping("/tareas")
    public String tarea(@ModelAttribute("tarea")Tarea tarea, Model model, HttpSession session){
        // Falta comparacion para validacion de usuario
        Long id = (Long)session.getAttribute("userId");
        User user = uService.findById(id);
        List<Tarea> tareas = user.getTareas();
        model.addAttribute("user", user);
        model.addAttribute("tareas", tareas);
        model.addAttribute("tarea", tarea);
        // Buscar la forma de mover las tareas a otra lista al ser completadas marcando el checkBox(boolean)
        return "Tarea/TareaHome";
    }
    

    // Controlador de tarea completada
    @GetMapping("/tareas/{id}/complete")
    public String completeTarea(@PathVariable("id")Long id, HttpSession session, Model model){
        Tarea tarea = tService.findById(id);
        tarea.setComplete(true);
        tService.save(tarea);
        return "redirect:/tareas";
    }

    @GetMapping("/tareas/{id}/incomplete")
    public String incompleteTarea(@PathVariable("id")Long id, HttpSession session, Model model){
        Tarea tarea = tService.findById(id);
        tarea.setComplete(false);
        tService.save(tarea);
        return "redirect:/tareas";
    }

    // Get crear
    @GetMapping("/tareas/new")
    public String createTarea(@ModelAttribute("tarea")Tarea tarea, Model model, HttpSession session) {
        Long id = (Long)session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        return "Tarea/TareaCreateEdit";
    }

    // Crear tarea
    @PostMapping("/tareas/new")
    public String createTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result, HttpSession session){
        if(result.hasErrors()){
            return "Tarea/TareaCreateEdit";
        }
            Long id = (Long) session.getAttribute("userId");
            User u = uService.findById(id);
            tarea.setUser(u);
            tService.save(tarea);
            return "redirect:/tareas";
        
    }

    // Get Eeditar
    @GetMapping("/tareas/{id}/edit")
    public String editTarea(@PathVariable("id")Long id, Model model, HttpSession session){
        Long uId = (Long)session.getAttribute("userId");
        User user = uService.findById(uId);
        model.addAttribute("user", user);
        Tarea tarea = tService.findById(id);
        model.addAttribute("tarea", tarea);
        return "Tarea/TareaCreateEdit";
    }

    // Editar tarea
    @PostMapping("/tareas/{id}/edit")
    public String editTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result, Model model, HttpSession session){
        if (result.hasErrors()) {
            return "Tarea/TareaCreateEdit";
        }
        Long id = (Long) session.getAttribute("userId");
        User u = uService.findById(id);
        tarea.setUser(u);
        tService.save(tarea);
        return "redirect:/tareas";
    }  

    // Borrar tarea
    @GetMapping("/tareas/{id}/delete")
    public String deleteTarea(@PathVariable("id")Long id, HttpSession session, Tarea t, Model model){
        tService.delete(id);
        return "redirect:/tareas";
    }
}
