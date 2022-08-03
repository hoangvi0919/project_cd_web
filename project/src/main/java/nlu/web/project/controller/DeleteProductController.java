package nlu.web.project.controller;

import nlu.web.project.repository.ProductChildRepo;
import nlu.web.project.service.ProductChildService;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteProductController {
    @Autowired
    private ProductChildService productChildService;

    @PostMapping("/deleteProduct")
    public String deleteEmployee(@RequestParam("id") String id) {
        productChildService.deletProduct(Long.parseLong(id));
        return "redirect:/productList";
    }
}