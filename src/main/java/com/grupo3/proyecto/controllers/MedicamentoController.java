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
import com.grupo3.proyecto.models.UserMedicamentos;
import com.grupo3.proyecto.services.MedicamentoService;
import com.grupo3.proyecto.services.UserService;

@Controller
public class MedicamentoController {
    private final MedicamentoService mService;
    private final UserService uService;

    public MedicamentoController(MedicamentoService mService, UserService uService){
        this.mService = mService;
        this.uService = uService;
    }

    // Home medicamentos
    @GetMapping("/meds")
    public String medsHome(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user =  uService.findById(id);
        List<UserMedicamentos> meds = user.getUMedicamentos();
        model.addAttribute("user", user);
        model.addAttribute("meds", meds);
        return "Meds/MedsHome";
    }

    // Crear Medicamento
    @GetMapping("/meds/new")
    public String crearMed(@ModelAttribute("medicamento")Medicamento medicamento,HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        return "Meds/AgregarMed";
    }

    @PostMapping("/meds/new")
    public String crearMed(@Valid @ModelAttribute("medicamento")Medicamento medicamento, BindingResult result, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        if (result.hasErrors()) {
            return "Meds/AgregarMed";
        }
        mService.save(medicamento);
        return "redirect:/meds";
    } 


}
