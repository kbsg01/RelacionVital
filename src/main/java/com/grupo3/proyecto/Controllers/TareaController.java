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

    // @GetMapping("/home/{id}/tarea")
    // no recuerdo para que era este home< se va comentao
    // public String tarea(@PathVariable("id")Long id, Model model){
    //     model.addAttribute("tarea", tService.findById(id));
    //     return "";
    // }

    @GetMapping("/tareas")
    public String tarea(@ModelAttribute("tarea")Tarea tarea, Model model, HttpSession session){
        // Falta comparacion para validacion de usuario
        Long id = (Long)session.getAttribute("userId");
        User user = uService.findById(id);
        List<Tarea> tareas = user.getTareas();
        
        model.addAttribute("user", user);
        model.addAttribute("tareas", tareas);
        // Buscar la forma de mover las tareas a otra lista al ser completadas marcando el checkBox(Boolean)
        return "Tarea/TareaHome";
    }
    
    // @GetMapping("/tareas/{id}/complete")
    // public String completeTarea(@PathVariable("id")Long id, HttpSession session){
    //     // Falta agregar comparacion id para validacion de ususario
    //     Tarea tarea = tService.findById(id);
    //     Long uId = (Long) session.getAttribute("userid");
    //     User user = uService.findById(uId);
    //     user.getTareas().remove(tarea);
    //     user.getTareasCompletadas().add(tarea);
    //     return "Tarea/TareaHome";
    // }

    @PostMapping("/tareas/new")
    public String createTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result, Model model, HttpSession session){
        if(result.hasErrors()){
            return "Tarea/TareaHome";
        }
            Long id = (Long) session.getAttribute("userId");
            User u = uService.findById(id);
            tarea.setUser(u);
            tService.save(tarea);
            return "redirect:/tareas";
        
    }

    @PostMapping("/tareas/{id}/edit")
    public String editTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result, Model model, HttpSession session){
        if (result.hasErrors()) {
            return "Tarea/TareaHome";
        }
        Long id = (Long) session.getAttribute("userId");
        User u = uService.findById(id);
        Long idTUser = tarea.getUser().getId();
        if (idTUser != id) {
            model.addAttribute("uError", "No puede editar esta tarea");
            return "Tarea/TareaHome";
        }
        tarea.setUser(u);
        tService.save(tarea);
        return "redirect:/tareas";
    }  

    @GetMapping("/tareas/{id}/delete")
    public String deleteTarea(@PathVariable("id")Long id, HttpSession session, Tarea t, Model model){
        Long uId = (Long) session.getAttribute("userId");
        Long idTUser = t.getUser().getId();
        if (uId != idTUser) {
            model.addAttribute("uError", "No puede eliminar esta tarea");
            return "Tarea/TareaHome";
        }
        tService.delete(id);
        return "redirect:/tareas";
    }
}
