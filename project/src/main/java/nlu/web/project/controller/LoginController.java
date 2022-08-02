package nlu.web.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class LoginController {

    @ModelAttribute("User")
    public User setUp() {
        return new User();
    }

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/validate-user")
    public ModelAndView ValidateUser(@ModelAttribute("User") User user, Model model, HttpServletRequest request) {
        String username= user.getUsername();
        List<User> l = (List<User>) userRepository.findByUsername(username);
        String userName = null;
        String ret = "login";
        for (User l1 : l) {
            if ((l1.getPassword().equals(user.getPassword()))) {
                userName = l1.getUsername();
                ret = "index";

            } else
                ret = "log-in";
        }

        ModelAndView mode = new ModelAndView(ret);
        mode.addObject("l", userName);
        mode.addObject("message", "Enter Valid Credentials");
        mode.addObject("msg", "USER");

        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(900);

        return mode;
    }

}