package nlu.web.project.controller;

import nlu.web.project.entity.ProductChild;
import nlu.web.project.entity.User;
import nlu.web.project.service.ProductChildService;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
@Controller
public class EditProductController {
    @Autowired
    private ProductChildService productChildService;

    @GetMapping("/editProduct")
    public String editProduct(@RequestParam("id") String id, Map<String, Object> model) {
        ProductChild productChild = productChildService.editProuctChild(Long.parseLong(id));
        model.put("pro", productChild);
        return "edit_product";
    }
}