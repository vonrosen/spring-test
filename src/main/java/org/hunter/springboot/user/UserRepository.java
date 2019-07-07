package org.hunter.springboot.user;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

@org.springframework.stereotype.Repository
public interface UserRepository extends Repository<Users, String> {

    @Query("select u from Users u")
    public List<Users> getAllUsers();

}
