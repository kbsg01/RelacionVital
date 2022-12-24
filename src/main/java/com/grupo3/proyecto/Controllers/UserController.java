package com.grupo3.proyecto.Controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.services.UserService;
import com.grupo3.proyecto.validator.UserValidator;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
    
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
        return "redirect:/breakingBad";
    }

    @PostMapping("/login")
    public String loginUser(@Valid @RequestParam("email") String email, @RequestParam("password") String password, Model model,
                            HttpSession session, @ModelAttribute("user") User user) {
        boolean isAuthenticated = userServ.authenticateUser(email, password);
        if (isAuthenticated){
            User u = userServ.findByEmail(email);
            session.setAttribute("userId", u.getId());
            return "redirect:/breakingBad";
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

    @GetMapping("/breakingBad")
    public String homePage(){
        return "home";
    }
}
