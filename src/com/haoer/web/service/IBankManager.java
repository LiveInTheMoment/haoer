package com.haoer.web.service;

import java.util.List;

import com.haoer.web.entity.TmBankInfo;

public interface IBankManager {

	public void addUser(TmBankInfo user);
	
	public List<TmBankInfo> getAllUser();
	
	public boolean delUser(int id);
	
	public TmBankInfo getUser(int id);
	
	public boolean updateUser(TmBankInfo user);
}
