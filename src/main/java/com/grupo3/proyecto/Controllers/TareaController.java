package com.grupo3.proyecto.controllers;

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
import com.grupo3.proyecto.repositories.TareaRepository;
import com.grupo3.proyecto.services.TareaService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TareaController {
    
    private final TareaService tareaServ;

    @GetMapping("/home/{id}/tarea")
    public String tarea(@PathVariable("id")Long id, Model model){
        model.addAttribute("tarea", tareaServ.findById(id));
        return "";
    }
    @PostMapping("/home/{id}/tarea")
    public String createTarea(@Valid @ModelAttribute("tarea")Tarea tarea, BindingResult result){
        if(result.hasErrors()){
            return "";
        }else{
            tareaServ.save(tarea);
            return "";
        }
    }

}
