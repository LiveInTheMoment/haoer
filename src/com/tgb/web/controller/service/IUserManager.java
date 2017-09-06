package com.tgb.web.controller.service;

import java.util.List;

import com.tgb.web.controller.entity.User;

public interface IUserManager {

	public void addUser(User user);
	
	public List<User> getAllUser();
	
	public boolean delUser(int id);
	
	public User getUser(int id);
	
	public boolean updateUser(User user);
}
