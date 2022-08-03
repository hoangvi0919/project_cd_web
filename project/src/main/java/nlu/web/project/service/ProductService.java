package nlu.web.project.service;

import nlu.web.project.entity.Product;
import nlu.web.project.entity.ProductChild;

import java.util.List;

public interface ProductService {

    List<Product> findByTrangThaiContainingIgnoreCase(String str);

    List<Product>getList10BanChay();


}

