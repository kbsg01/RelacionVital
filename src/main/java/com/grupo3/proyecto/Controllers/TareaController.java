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

    @GetMapping("/home/{id}/tarea")
    public String tarea(@PathVariable("id")Long id, Model model){
        model.addAttribute("tarea", tService.findById(id));
        return "";
    }

    @GetMapping("/tareas")
    public String tarea(@ModelAttribute("tarea")Tarea tarea, Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user = uService.findById(id);
        List<Tarea> tareas = user.getTareas();
        List<Tarea> completeT = user.getCompleteTareas();
        model.addAttribute("user", user);
        model.addAttribute("tareas", tareas);
        model.addAttribute("completeT", completeT);
        return "Tarea/TareaHome";
    }
    @GetMapping("/tareas/{id}/complete")
    public String completeTarea(@PathVariable("id")Long id, HttpSession session){
        Tarea tarea = tService.findById(id);
        Long uId = (Long) session.getAttribute("userid");
        User user = uService.findById(uId);
        user.getTareas().remove(tarea);
        user.getCompleteTareas().add(tarea);
        return "Tarea/TareaHome";
    }
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
    public String editTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result, Model model){
        return null;
    }  

    @GetMapping("/tareas/{id}/delete")
    public String deleteTarea(@PathVariable("id")Long id){
        tService.delete(id);
        return "redirect:/tareas";
    }
        
}
