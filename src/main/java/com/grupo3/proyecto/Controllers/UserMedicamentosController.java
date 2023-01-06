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

import com.grupo3.proyecto.models.Medicamento;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserMedicamento;
import com.grupo3.proyecto.services.MedicamentoService;
import com.grupo3.proyecto.services.UserMedicamentoService;
import com.grupo3.proyecto.services.UserService;

@Controller
public class UserMedicamentosController {
    private final MedicamentoService mService;
    private final UserMedicamentoService uMService;
    private final UserService uService;


    public UserMedicamentosController(MedicamentoService mService, UserMedicamentoService uMService,
            UserService uService) {
        this.mService = mService;
        this.uMService = uMService;
        this.uService = uService;
    }

    // Agregar receta
    @GetMapping("/receta/add")
    public String addReceta(@ModelAttribute("receta")UserMedicamento receta, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        List<Medicamento> medicamentos = mService.findAll();
        model.addAttribute("medicamentos", medicamentos);
        return "Meds/CrearEditarReceta";
    }

    @PostMapping("/receta/add")
    public String addReceta(@Valid @ModelAttribute("receta")UserMedicamento receta, BindingResult result, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
            System.out.println(result.getAllErrors());
        if (result.hasErrors()) {
            List<Medicamento> medicamentos = mService.findAll();
            model.addAttribute("medicamentos", medicamentos);
            return "Meds/CrearEditarReceta";
        }
        receta.setUser(user);
        uMService.save(receta);
        return "redirect:/meds";
    }

    @GetMapping("/meds/{id}/delete")
    public String delteMed(@PathVariable("id")Long id){
        uMService.delete(id);
        return "redirect:/meds";
    }
}
