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
import com.grupo3.proyecto.services.UserMedicamentoService;
import com.grupo3.proyecto.services.UserService;

@Controller
public class MedicamentoController {
    private final MedicamentoService mService;
    private final UserMedicamentoService uMService;
    private final UserService uService;

    public MedicamentoController(MedicamentoService mService, UserService uService, UserMedicamentoService uMService){//, ){
        this.mService = mService;
        this.uService = uService;
        this.uMService = uMService;
    }

    // Home medicamentos
    @GetMapping("/meds")
    public String medsHome(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User user =  uService.findById(id);
        model.addAttribute("user", user);
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



    // Agregar receta
    @GetMapping("/meds/receta/add")
    public String addReceta(@ModelAttribute("receta")UserMedicamentos receta, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        // Lista de medicamentos(No funciona)
        List<Medicamento> medicamentos = user.getMedicamentos();
        model.addAttribute("medicamento", medicamentos);
        return "Meds/CrearEditarReceta";
    }

    @PostMapping("/meds/receta/add")
    public String addReceta(@Valid @ModelAttribute("receta")UserMedicamentos receta, BindingResult result, HttpSession session, Model model){
        Long id = (Long) session.getAttribute("userId");
        User user = uService.findById(id);
        model.addAttribute("user", user);
        if (result.hasErrors()) {
            return "Meds/CrearEditarReceta";
        }
        // setear medicamento
        receta.setUser(user);
        uMService.save(receta);
        return "redirect:/meds";
    }
    
    // @GetMapping("/meds/new")
    // public String createEditMed(@ModelAttribute("uMed")UserMedicamento uMed,Model model, HttpSession session){
    //     Long id = (Long) session.getAttribute("userId");
    //     User u = uService.findById(id);
    //     model.addAttribute("user", u);
    //     return "Meds/CrearEditarMed";
    // }

    // @PostMapping("/meds/new")
    // public String createEditMed(@Valid @ModelAttribute("uMed")UserMedicamento uMed, BindingResult result, HttpSession session, Medicamento medicamento){
    //     if (result.hasErrors()) {
    //         return "Meds/CrearEditarMed";
    //     }
    //     Long id = (Long)session.getAttribute("userId");
    //     User u = uService.findById(id);
    //     uMed.setUser(u);
    //     u.getMedicamentos().add(uMed);

    //     return "redirect:/medicamentos/home";
    // }
}
