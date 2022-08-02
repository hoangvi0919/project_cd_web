package nlu.web.project.controller;

import nlu.web.project.entity.User;
import nlu.web.project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("User")
public class RegisterController {
    @ModelAttribute("User")
    public User setUp() {
        return new User();
    }

    @Autowired
    private UserRepository userRepository;

    @PostMapping(path = "/save-user")
    public ModelAndView registerUser(User user, Model model) {

        String ret = "register";
        String email = user.getEmail();
        String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
        if (email.matches(regex)) {
            userRepository.save(user);
            ret = "index";
        } else
            ret = "register";
        ModelAndView mode = new ModelAndView(ret);
        mode.addObject("l", user);
        return mode;
    }
}
