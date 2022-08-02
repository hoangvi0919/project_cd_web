package nlu.web.project.service.implement;

import nlu.web.project.repository.ProductRepo;
import nlu.web.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepo productRepo;

}
