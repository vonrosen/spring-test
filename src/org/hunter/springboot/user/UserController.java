package org.hunter.springboot.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/users")
    public List<Users> getUsers() {
        return userRepository.getAllUsers();
    }

}
