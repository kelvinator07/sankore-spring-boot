package com.geekykel.sankore.repository;

import com.geekykel.sankore.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Kelvin on 3/02/2020
 */
public interface UserRespository extends JpaRepository<User, Long> {
	
	//@Query(value = "SELECT type, count(type) FROM location GROUP BY type")
	//List<Object[]> findTypeAndTypeCount();

}