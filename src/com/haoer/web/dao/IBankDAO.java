package com.haoer.web.dao;

import java.util.List;

import com.haoer.web.entity.TmBankInfo;

public interface IBankDAO {

	public void addUser(TmBankInfo user);
	
	public List<TmBankInfo> getAllUser();
	
	public boolean delUser(int id);
	
	public TmBankInfo getUser(int id);
	
	public boolean updateUser(TmBankInfo user);

}
