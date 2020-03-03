package com.geekykel.sankore.service;

import com.geekykel.sankore.entities.User;
import com.geekykel.sankore.repository.UserRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


/**
 * Created by Kelvin on 3/02/2020
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRespository userRespository;

    @Override
    public User saveUser(User user) {
        return userRespository.save(user);
    }

    @Override
    public User updateUser(User user) {
        return userRespository.save(user);
    }

    @Override
    public void deleteUser(long id) {
        Optional<User> user = userRespository.findById(id);
        userRespository.delete(user.get());
    }

    @Override
    public User getUserById(long id) {
        return userRespository.findById(id).get();
    }

    @Override
    public List<User> getAllUsers() {
        return userRespository.findAll();
    }

}
