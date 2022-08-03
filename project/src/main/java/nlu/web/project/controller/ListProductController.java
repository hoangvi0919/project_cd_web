package nlu.web.project.controller;

import nlu.web.project.entity.Product;
import nlu.web.project.entity.ProductChild;
import nlu.web.project.entity.User;
import nlu.web.project.repository.ProductChildRepo;
import nlu.web.project.service.ProductChildService;
import nlu.web.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ListProductController {
@Autowired
//private ProductChildService productChildService;
private ProductChildRepo productChildRepo;
    @GetMapping("/productList")
    public String listOfEmployee(Model model) {
        List<ProductChild> productList = productChildRepo.findAll();
        model.addAttribute("productList", productList);
        return "product_manage";
    }

}
