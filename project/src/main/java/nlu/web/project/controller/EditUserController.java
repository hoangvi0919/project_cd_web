package nlu.web.project.controller;

import nlu.web.project.entity.User;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class EditUserController {
    @Autowired
    private UserService userService;
    @GetMapping("/editUser")
    public String editEmployee(@RequestParam("id") String id, Map<String, Object> model) {
        User user = userService.editUser(Long.parseLong(id));
        model.put("employee", user);
        return "edit_user";
    }
}
