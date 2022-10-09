package net.skhu.controller;

import net.skhu.model.StudentsRegistration;
import net.skhu.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("user")
public class StudentsController {

//    @Autowired
//    public StudentsService studentsService;

    @GetMapping("register")
    public String register(Model model) {
        model.addAttribute(new StudentsRegistration());
        return "user/register";
    }

//    @PostMapping("register")
//    public String register(Model model,
//                           @Valid StudentsRegistration studentsRegistration, BindingResult bindingResult)
//    {
//        if (bindingResult.hasErrors()) {
//            model.addAttribute("Students", studentsService.findAll());
//            return "user/register";
//        }
//        studentsService.save(studentsRegistration);
//        return "redirect:success";
//    }


    @RequestMapping("success")
    public String success() {
        return "user/success";
    }
}
