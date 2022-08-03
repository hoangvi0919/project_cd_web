package nlu.web.project.controller;

import nlu.web.project.entity.ProductChild;
import nlu.web.project.entity.User;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class EditUserController {
    @Autowired
    private UserService userService;
    @GetMapping("/editUser")
    public String editUser(@RequestParam("id") String id, Map<String, Object> model) {
        User user = userService.editUser(Long.parseLong(id));
        model.put("user", user);
        return "edit_user";
    }

//    @PostMapping("/save-user")
//    public String createUser(@ModelAttribute("user") User user) {
//        userService.saveUser(user);
//        return "redirect:/userList";
//    }

//    @PostMapping("/saveU")
//    public String createUser(@ModelAttribute("user") User user) {
//        userService.createOrUpdateEmployee(user);
//        return "redirect:/userList";
//    }
}
