package nlu.web.project.controller;

import nlu.web.project.entity.User;
import nlu.web.project.repository.UserRepository;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ListUserController {
    @Autowired
    private UserRepository userRepository;
//private UserService userService;
    @GetMapping("/userList")
    public String listOfEmployee(Model model) {
        List<User> userList = userRepository.findAll();
        model.addAttribute("userList", userList);
        return "user_manage";
    }

}
