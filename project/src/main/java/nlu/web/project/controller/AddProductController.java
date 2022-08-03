package nlu.web.project.controller;

import nlu.web.project.entity.ProductChild;
import nlu.web.project.repository.ProductChildRepo;
import nlu.web.project.service.ProductChildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import java.util.Map;

@Controller
public class AddProductController {

    @Autowired
    private ProductChildService productChildService;

    @GetMapping("/add")
    public String add(Map<String, Object> model) {
        model.put("productChild", new ProductChild());
        return "add_product";
    }

    @PostMapping("/save-product")
    public String createProduct(@ModelAttribute("productChild") ProductChild pro) {
        productChildService.saveProduct(pro);
        return "redirect:/productList";
    }
}
