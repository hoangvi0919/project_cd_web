package nlu.web.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Home {
    @RequestMapping(value = "home")
        public String test(){
        return "hello";
    }

    @RequestMapping(value = "404")
    public String findNotFound(){
        return "404";
    }

    @RequestMapping(value = "about")
    public String about(){
        return "about";
    }

    @RequestMapping(value = "index")
    public String home(){
        return "index";
    }

    @RequestMapping(value = "log-in")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "sign-up")
    public String register(){
        return "register";
    }

    @RequestMapping(value = "cart")
    public String cart(){
        return "cart";
    }

}
