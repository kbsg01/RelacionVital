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

import com.grupo3.proyecto.models.Bitacora;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.services.BitacoraService;
import com.grupo3.proyecto.services.UserService;


@Controller
public class BitacoraController {

    private final BitacoraService bitacoraServ;
    private final UserService uService;

    public BitacoraController(BitacoraService bitacoraServ, UserService uService) {
        this.bitacoraServ = bitacoraServ;
        this.uService = uService;
    }
    
    @GetMapping("/bitacora")
    public String bitacora(@ModelAttribute("bitacora")Bitacora bitacora, Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user = uService.findById(id);
        List<Bitacora> bitacoras = user.getBitacoras();

        model.addAttribute("user", user);
        model.addAttribute("bitacoras", bitacoras);
        
        return "Bitacora/BitacoraHome";

    }
    @GetMapping("/bitacora/new")
    public String newBitacora(@ModelAttribute("bitacora") Bitacora bitacora) {
        return "Bitacora/CreateBitacora";
    }

    @PostMapping("/bitacora/new")
    public String crearBitacora(@Valid @ModelAttribute("bitacora")Bitacora bitacora, BindingResult result, HttpSession session){
        if(result.hasErrors()){
            return "Bitacora/CreateBitacora";
        }
            Long id = (Long) session.getAttribute("userId");
            User u = uService.findById(id);
            bitacora.setUser(u);
            bitacoraServ.save(bitacora);
            return "redirect:/bitacora";
        
    }
    @GetMapping("bitacora/{id}")
    public String showBitacora(@PathVariable("id")Long id, Model model){
        Bitacora bitacora = bitacoraServ.findById(id);
        User user = bitacora.getUser();
        model.addAttribute("bitacora", bitacora);
        model.addAttribute("user", user);
        return "Bitacora/ShowBitacora";
    }

    @GetMapping("/bitacora/{id}/edit")
    public String BitacoraEdit(@PathVariable("id") Long id, Model model) {
        Bitacora bitacora = bitacoraServ.findById(id);
        model.addAttribute("bitacora", bitacora);
        return "Bitacora/CreateBitacora";
    }

    // Editar bitacora
    @PostMapping("/bitacora/{id}/edit")
    public String editBitacora(@Valid @ModelAttribute("bitacora")Bitacora bitacora, BindingResult result, Model model, HttpSession session){
        if (result.hasErrors()) {
            return "Bitacora/editBitacora";
        }
        Long id = (Long) session.getAttribute("userId");
        User u = uService.findById(id);
        bitacora.setUser(u);
        bitacoraServ.save(bitacora);
        return "redirect:/bitacora";
    }  

    // Borrar tarea
    @GetMapping("/bitacora/{id}/delete")
    public String deleteBitacora(@PathVariable("id")Long id    ){
        bitacoraServ.delete(id);
        return "redirect:/bitacora";
    }
    
}
