package nlu.web.project.controller;

import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteUserController {
    @Autowired
    private UserService userService;

    @PostMapping("/deleteUser")
    public String deleteEmployee(@RequestParam("id") String id) {
        userService.deleteUser(Long.parseLong(id));
        return "redirect:/userList";
    }
}
