package nlu.web.project.repository;

import nlu.web.project.entity.User;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User,Long > {
    List<User> findByUsername(String username);
}
