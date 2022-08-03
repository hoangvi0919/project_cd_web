package nlu.web.project.service.implement;

import nlu.web.project.entity.ProductChild;
import nlu.web.project.entity.User;
import nlu.web.project.repository.ProductChildRepo;
import nlu.web.project.service.ProductChildService;
import nlu.web.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductChildImp implements ProductChildService {

    @Autowired
    private ProductChildRepo productChildRepo;
    @Override
    public List<ProductChild> getAllProducts() {
        return productChildRepo.findAll();
    }

    @Override
    public void deletProduct(long id) {
         productChildRepo.deleteById(id);
    }

    @Override
    public void saveProduct(ProductChild productChild) {
          productChildRepo.save(productChild);
    }

    @Override
    public ProductChild editProuctChild(long id) {
        return productChildRepo.getOne(id);
    }
}
