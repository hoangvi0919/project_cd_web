package nlu.web.project.repository;

import nlu.web.project.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepo extends JpaRepository<Product, Long> {
    List<Product> findByTrangThaiContainingIgnoreCase(String str);

    @Query(value = "SELECT * FROM product WHERE trang_thai NOT LIKE '%NKD%' " +
            "ORDER BY sl_da_ban DESC Limit 0, 10", nativeQuery = true)
            List<Product>getList10BanChay();
}
