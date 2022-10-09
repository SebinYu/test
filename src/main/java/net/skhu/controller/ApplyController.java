package net.skhu.controller;

import net.skhu.dto.Apply;
import net.skhu.mapper.ApplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/studygroup")
public class ApplyController {
    @Autowired ApplyMapper applyMapper;


    @GetMapping("apply")
    public String authorPopGET(Model model) throws Exception{
        model.addAttribute("apply", new Apply());
        model.addAttribute("applies", applyMapper.findAll());
        return "studygroup/apply";
    }


//    @PutMapping("apply")
//    public String apply(Model model, Apply apply) {
//        applyMapper.insert(apply);
//        model.addAttribute("applies", applyMapper.findAll());
//        return "redirect:display";
//    }



}
