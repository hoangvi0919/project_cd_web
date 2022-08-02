package nlu.web.project.service;

import nlu.web.project.entity.User;

public interface UserService {
    public User findUserByUsername(String username);

    public User saveUser(User user);

}
//