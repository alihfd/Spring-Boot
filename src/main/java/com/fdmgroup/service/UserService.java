package com.fdmgroup.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdmgroup.dao.IUserDao;
import com.fdmgroup.model.User;

@Service
public class UserService {
	
	private IUserDao userDao;
	
	@Autowired
	public UserService(IUserDao userDao) {
		super();
		this.userDao = userDao;
	}
	public List<User> getAllUsers(){
		return this.userDao.findAll();
	}
	
	public User addUser(User user) {
		return this.userDao.save(user);
	}
	
	public Optional<User> findUserById(int id) {
		return this.userDao.findById(id);
	}

}
