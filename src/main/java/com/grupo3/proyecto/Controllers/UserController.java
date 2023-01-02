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
import org.springframework.web.bind.annotation.RequestParam;

import com.grupo3.proyecto.models.Tarea;
import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.services.TareaService;
import com.grupo3.proyecto.services.UserService;
import com.grupo3.proyecto.validator.UserValidator;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
    
    private final TareaService tService;
    private final UserService userServ;
    private final UserValidator userValid;

    @GetMapping("/")
    public String index(@ModelAttribute("user") User user){
        return "index";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session ){
        userValid.validate(user, result);
        if(result.hasErrors()){
            return "index";
        }
        boolean duplicated = userServ.duplicatedUser(user.getEmail());
        if(duplicated){
            model.addAttribute("error", "Email already in use! Please try again with a different email address!");
            return "index";
        }
        User u = userServ.registerUser(user);
        session.setAttribute("userId", u.getId());
        return "redirect:/home";
    }

    @PostMapping("/login")
    public String loginUser(@Valid @RequestParam("email") String email, @RequestParam("password") String password, Model model,
                            HttpSession session, @ModelAttribute("user") User user) {
        boolean isAuthenticated = userServ.authenticateUser(email, password);
        if (isAuthenticated){
            User u = userServ.findByEmail(email);
            session.setAttribute("userId", u.getId());
            return "redirect:/home";
        }else {
            model.addAttribute("error","Invalid Credentials. Please try again");
            return "index";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/home")
    public String homePage(Model model, HttpSession session){
        Long uid = (Long) session.getAttribute("userId");
        User u = userServ.findById(uid);
        List<Tarea> tareas = tService.findTop5();
        model.addAttribute("user", u);
        model.addAttribute("tareas", tareas);
        return "home";
    }

    @GetMapping("/account/perfil")
    public String perfil(@ModelAttribute("user")User user, Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        User users = userServ.findById(id);
        model.addAttribute("users", users);
        return "User/UserHome";
    }

    @PostMapping("/account/perfil/name")
    public String editName(@Valid @ModelAttribute("user")User user, BindingResult result, Model model, HttpSession session){
            if(result.hasErrors()){
                return "User/UserHome";
            }
            Long id = (Long) session.getAttribute("userId");
            User u = userServ.findById(id);
            userServ.save(u);
            return "redirect:/account/perfil";
    }

    @PostMapping("/account/perfil/email")
    public String editEmail(@Valid @ModelAttribute("user")User user, BindingResult result, Model model, HttpSession session){
            if(result.hasErrors()){
                return "User/UserHome";
            }
            Long id = (Long) session.getAttribute("userId");
            User u = userServ.findById(id);
            userServ.save(u);
            return "redirect:/account/perfil";
    }

    @PostMapping("/account/perfil/password")
    public String editPassword(@Valid @ModelAttribute("user")User user, BindingResult result, Model model, HttpSession session){
            if(result.hasErrors()){
                return "User/UserHome";
            }
            Long id = (Long) session.getAttribute("userId");
            User u = userServ.findById(id);
            userServ.save(u);
            return "redirect:/account/perfil";
    }
}
