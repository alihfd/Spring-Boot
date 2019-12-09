package com.fdmgroup.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdmgroup.model.User;

@Repository
public interface IUserDao extends JpaRepository<User, Integer>{

}
