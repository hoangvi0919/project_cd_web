package nlu.web.project.service.implement;

import nlu.web.project.entity.User;
import nlu.web.project.repository.UserRepository;
import nlu.web.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service("userService")
public class UserServiceImp implements UserService {
    @Autowired
    private UserRepository userRepository;


    @Override
    public User findUserByUsername(String username) {
        return (User) userRepository.findByUsername(username);
    }

    @Override
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    // Lấy ra danh sách user từ database
    @Override
    public List<User> getAllUsers() {
        List<User> list = userRepository.findAll();
        List<User> userList = list.stream()
                .map(User::new)
                .collect(Collectors.toCollection(ArrayList::new));
        return userList;
    }

    @Override
    public User editUser(Long id) {
        return userRepository.getOne(id);
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }


}
