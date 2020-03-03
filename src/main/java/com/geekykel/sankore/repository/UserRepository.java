package com.geekykel.sankore.repository;

import com.geekykel.sankore.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Kelvin on 3/02/2020
 */
public interface UserRepository extends JpaRepository<User, Long> {

}