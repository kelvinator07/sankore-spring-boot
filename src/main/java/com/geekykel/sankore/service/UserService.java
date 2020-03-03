package com.geekykel.sankore.service;

import com.geekykel.sankore.entities.User;

import java.util.List;

/**
 * Created by Kelvin on 3/02/2020
 */
public interface UserService {

    User saveUser(User user);

    User updateUser(User user);

    void deleteUser(long id);

    User getUserById(long id);

    List<User> getAllUsers();
}
