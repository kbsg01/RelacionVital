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

import com.grupo3.proyecto.models.Emocion;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserEmocion;
import com.grupo3.proyecto.services.EmocionService;
import com.grupo3.proyecto.services.UserEmocionService;
import com.grupo3.proyecto.services.UserService;

@Controller
public class EmocionController {
    private final EmocionService eService;
    private final UserService uService;
    private final UserEmocionService uEService;

    

    public EmocionController(EmocionService eService, UserService uService, UserEmocionService uEService) {
        this.eService = eService;
        this.uService = uService;
        this.uEService = uEService;
    }

    // Home Emociones
    @GetMapping("/emociones")
    public String cEmocionesHome(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user =  uService.findById(id);
        List<UserEmocion> emociones = user.getUEmociones();
        model.addAttribute("emociones", emociones);
        model.addAttribute("user", user);
        return "Emociones/EmocionesHome";
    }

    // Agregar Emocion
    @GetMapping("/emociones/add")
    public String agregarEmocion(@ModelAttribute("emocion")UserEmocion emocion, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        List<Emocion> emociones = eService.findAll();
        model.addAttribute("emociones", emociones);
        return "Emociones/CrearEditarEmocion";
    }

    @PostMapping("/emociones/add")
    public String agregarEmocion(@Valid @ModelAttribute("emocion")UserEmocion emocion,BindingResult result, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
            System.out.println(result.getAllErrors());
        if (result.hasErrors()) {
            List<Emocion> emociones = eService.findAll();
            model.addAttribute("emociones", emociones);
            return "Emociones/CrearEditarEmocion";
        }
        emocion.setUser(user);
        uEService.save(emocion);
        return "redirect:/emocion";
    }

    // Editar Emocion
    @GetMapping("/emociones/{id}/edit")
    public String editEmocion(@PathVariable("id")Long id, Model model, HttpSession session){
        Long uId = (Long) session.getAttribute("userId");
        User user = uService.findById(uId);
        model.addAttribute("user", user);
        UserEmocion emocion = uEService.findById(id);
        List<Emocion> emociones = eService.findAll();
        model.addAttribute("emociones", emociones);
        model.addAttribute("emocion", emocion);
        return "Emociones/CrearEditarEmocion";
    }

    @PostMapping("/emociones/{id}/edit")
    public String editEmocion(@Valid @ModelAttribute("emocion")UserEmocion emocion, BindingResult result, Model model, HttpSession session){
        Long uId = (Long) session.getAttribute("userId");
        User user = uService.findById(uId);
        model.addAttribute("user", user);
        if (result.hasErrors()) {
            List<Emocion> emociones = eService.findAll();
            model.addAttribute("emociones", emociones);
            return "Emociones/CrearEditarEmocion";
        }
        emocion.setUser(user);
        uEService.save(emocion);
        return "redirect:/emociones";
    }

    // Eliminar Emocion
    @GetMapping("/emociones/{id}/delete")
    public String eliminarEmocion(@PathVariable("id")Long id){
        uEService.delete(id);
        return "redirect:/emociones";
    }
}
