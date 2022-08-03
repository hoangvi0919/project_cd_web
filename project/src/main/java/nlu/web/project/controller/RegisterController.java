package nlu.web.project.controller;

import nlu.web.project.entity.User;
import nlu.web.project.repository.UserRepository;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
@SessionAttributes("User")
public class RegisterController {
    @ModelAttribute("User")
    public User setUp() {
        return new User();
    }

    @Autowired
    private UserService userService;

    @PostMapping(path = "/save-user")
    public String registerUser(@Valid User user, Errors errors) {
        if(errors.hasErrors() || userService.existsByUsername(user.getUsername())){
            System.out.println(errors.toString());
            return "redirect:/register";
        }

        userService.save(user);
        return "redirect:/log-in";
    }

    @ResponseBody
    @GetMapping("/exist/{username}")
    public String existsByUsername(@PathVariable String username){
        return userService.existsByUsernameStr(username);
    }


}
