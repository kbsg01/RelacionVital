package com.grupo3.proyecto.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.grupo3.proyecto.models.Medicamento;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserMedicamento;
import com.grupo3.proyecto.services.MedicamentoService;
import com.grupo3.proyecto.services.UserService;

@Controller
public class MedicamentoController {
    private final MedicamentoService mService;
    private final UserMedicamento uMService;
    private final UserService uService;

    public MedicamentoController(MedicamentoService mService, UserService uService, UserMedicamento uMService){
        this.mService = mService;
        this.uService = uService;
        this.uMService = uMService;
    }

    // Home medicamentos
    @GetMapping("medicamentos/home")
    public String medsHome(@ModelAttribute("medicamento")Medicamento med, Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user =  uService.findById(id);
        List<UserMedicamento> meds = user.getMedicamentos();
        model.addAttribute("medicamentos", meds);
        model.addAttribute("user", user);
        return "Meds/MedsHome";
    }

    // Crear Medicamento
    @PostMapping("/medicamentos/new")
    public String createMed(@Valid @ModelAttribute("uMed")UserMedicamento uMed, BindingResult result, HttpSession session, Medicamento medicamento){
        if (result.hasErrors()) {
            return "Meds/CrearEditarMed";
        }
        Long id = (Long)session.getAttribute("userId");
        User u = uService.findById(id);
        uMService.setUser(u);
        uMService.save
        
    }
}
