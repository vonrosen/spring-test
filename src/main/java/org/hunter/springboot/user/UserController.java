package org.hunter.springboot.user;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    private static final Logger logger = LogManager.getLogger();

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/users")
    public List<Users> getUsers() {
        logger.info("Calling getUsers!");
        List<Users> users = userRepository.getAllUsers();
        logger.debug(users.size() + " users returned.");
        return users;
    }

}
