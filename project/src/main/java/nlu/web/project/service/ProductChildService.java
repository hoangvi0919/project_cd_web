package nlu.web.project.service;

import nlu.web.project.entity.Product;
import nlu.web.project.entity.ProductChild;

import java.util.List;

public interface ProductChildService  {
        //cho quản lý sản phẩm
        public List<ProductChild> getAllProducts();

   public void deletProduct(long parseLong);

   public void saveProduct(ProductChild productChild);
}

