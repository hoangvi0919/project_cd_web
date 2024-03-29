package nlu.web.project.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/User")
public class LogoutController {

    @RequestMapping("/logout")
    public String closeSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        System.out.println("Session closed ");
        return "index";
    }

}
