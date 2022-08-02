package nlu.web.project.controller;

import nlu.web.project.entity.Product;
import nlu.web.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    ProductService productService;

    @RequestMapping(value = "test")
    public String test() {
        return "hello";
    }

    @RequestMapping(value = "404")
    public String findNotFound() {
        return "404";
    }

    @RequestMapping(value = "about")
    public String about() {
        return "about";
    }

    @RequestMapping(value = "index")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("index");
        List<Product> noiBat = productService.findAllByTrangThaiContainingIgnoreCase("NoiBat");
        mav.addObject("listNoiBat", noiBat);
        List<Product> banChay = productService.getList10BanChay();
        mav.addObject("listBanChay", banChay);
        return mav;
    }

    @RequestMapping(value = "log-in")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "log-in-admin")
    public String loginAdmin() {
        return "login_admin";
    }

    @RequestMapping(value = "register")
    public String register() {
        return "register";
    }

    @RequestMapping(value = "cart")
    public String cart() {
        return "cart";
    }

    @RequestMapping(value = "checkout")
    public String checkout() {
        return "checkout";
    }

    @RequestMapping(value = "compare")
    public String compare() {
        return "compare";
    }

    @RequestMapping(value = "contact-us")
    public String contact_us() {
        return "contact-us";
    }

    @RequestMapping(value = "edit_information")
    public String editInformation() {
        return "edit_information";
    }

    @RequestMapping(value = "forget-pass")
    public String forgetPass() {
        return "forget-pass";
    }

    @RequestMapping(value = "forget-pass-admin")
    public String forgetPassAdmin() {
        return "forget-pass-admin";
    }

    @RequestMapping(value = "product-detail")
    public String productDetail() {
        return "product-detail";
    }

    @RequestMapping(value = "product-listing")
    public String productListing() {
        return "product-listing";
    }

    @RequestMapping(value = "thongke_manage")
    public String index_ad() {
        return "thongke_manage";
    }

    @RequestMapping(value = "add_banner")
    public String addBanner() {
        return "add_banner";
    }

    @RequestMapping(value = "add_supplier")
    public String addSupplier() {
        return "add_supplier";
    }

    @RequestMapping(value = "add_promotion")
    public String addPromotion() {
        return "add_promotion";
    }

    @RequestMapping(value = "add_product")
    public String addProduct() {
        return "add_product";
    }

    @RequestMapping(value = "add_user")
    public String addUser() {
        return "add_user";
    }

    @RequestMapping(value = "order_manage")
    public String orderManage() {
        return "order_manage";
    }

    @RequestMapping(value = "order_detail")
    public String order_detail() {
        return "order_detail";
    }

    @RequestMapping(value = "banner_manage")
    public String bannerManage() {
        return "banner_manage";
    }

    @RequestMapping(value = "promotion_manage")
    public String promotionManage() {
        return "promotion_manage";
    }

    @RequestMapping(value = "supplier_manage")
    public String supplierManage() {
        return "supplier_manage";
    }

    @RequestMapping(value = "user_manage")
    public String userManage() {
        return "user_manage";
    }

    @RequestMapping(value = "product_manage")
    public String productManage() {
        return "product_manage";
    }

    @RequestMapping(value = "edit_banner")
    public String edit_banner() {
        return "edit_banner";
    }

    @RequestMapping(value = "edit_supplier")
    public String editSupplier() {
        return "edit_supplier";
    }

    @RequestMapping(value = "edit_promotion")
    public String editPromotion() {
        return "edit_promotion";
    }

    @RequestMapping(value = "edit_product")
    public String editProduct() {
        return "edit_product";
    }

    @RequestMapping(value = "edit_user")
    public String editUser() {
        return "edit_user";
    }

    @RequestMapping(value = "edit_order")
    public String editOrder() {
        return "edit_order";
    }

    @RequestMapping(value = "product_view")
    public String product_view() {
        return "product_view";
    }


}
