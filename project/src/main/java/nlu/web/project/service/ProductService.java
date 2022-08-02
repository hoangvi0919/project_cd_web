package nlu.web.project.service;

import nlu.web.project.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAllByTrangThaiContainingIgnoreCase(String str);

    List<Product>getList10BanChay();
}
