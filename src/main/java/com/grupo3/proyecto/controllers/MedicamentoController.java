package com.grupo3.proyecto.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserMedicamento;
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
        List<UserMedicamento> meds = user.getUMedicamentos();
        model.addAttribute("user", user);
        model.addAttribute("meds", meds);
        return "Meds/MedsHome";
    }
}
