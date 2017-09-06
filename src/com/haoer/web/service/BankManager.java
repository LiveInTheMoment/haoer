package com.haoer.web.service;

import java.util.List;

import com.haoer.web.dao.IBankDAO;
import com.haoer.web.entity.TmBankInfo;

public class BankManager implements IBankManager {
	
	private IBankDAO userDao;
	

	public IBankDAO getUserDao() {
		return userDao;
	}


	public void setUserDao(IBankDAO userDao) {
		this.userDao = userDao;
	}


	@Override
	public void addUser(TmBankInfo user) {
		userDao.addUser(user);
	}


	@Override
	public List<TmBankInfo> getAllUser() {
		return userDao.getAllUser();
	}


	@Override
	public boolean delUser(int id) {
		return userDao.delUser(id);
	}


	@Override
	public TmBankInfo getUser(int id) {
		return userDao.getUser(id);
	}


	@Override
	public boolean updateUser(TmBankInfo user) {
		return userDao.updateUser(user);
	}

}
