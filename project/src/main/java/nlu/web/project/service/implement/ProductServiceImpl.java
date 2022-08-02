package nlu.web.project.service.implement;

import nlu.web.project.entity.Product;
import nlu.web.project.repository.ProductRepo;
import nlu.web.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepo productRepo;


    @Override
    public List<Product> findByTrangThaiContainingIgnoreCase(String str) {
        return productRepo.findByTrangThaiContainingIgnoreCase(str);
    }

    @Override
    public List<Product> getList10BanChay() {
        return productRepo.getList10BanChay();
    }
}
