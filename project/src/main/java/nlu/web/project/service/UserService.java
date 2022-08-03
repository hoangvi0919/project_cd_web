package nlu.web.project.service;

import nlu.web.project.entity.User;

import java.util.List;

public interface UserService {
    public User findUserByUsername(String username);

    public User saveUser(User user);

    public void createOrUpdateEmployee(User user);

    public List<User> getAllUsers();

    public User editUser(Long id);

    public void deleteUser(Long id);

    String existsByUsernameStr(String username);
    boolean existsByUsername(String username);
    void save(User user);
}
//