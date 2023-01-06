package com.grupo3.proyecto.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
    
    @GetMapping("/calendario")
    public String cEmocionesHome(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user =  uService.findById(id);
        List<UserEmocion> emociones = user.getUEmociones();
        model.addAttribute("emociones", emociones);
        model.addAttribute("user", user);
        return "Emociones/EmocionesHome";
    }


}
