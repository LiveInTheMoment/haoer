package com.haoer.web.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.haoer.web.entity.TmBankInfo;

public class BankDAO implements IBankDAO  {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addUser(TmBankInfo user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public List<TmBankInfo> getAllUser() {
		String hql = "from TmBankInfo";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}

	@Override
	public boolean delUser(int id) {
		String hql = "delete TmBankInfo u where u.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		
		return (query.executeUpdate() > 0);
	}

	@Override
	public TmBankInfo getUser(int id) {
		String hql = "from TmBankInfo u where u.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		
		return (TmBankInfo) query.uniqueResult();
	}

	@Override
	public boolean updateUser(TmBankInfo user) {
		String hql = "update User u set u.userName=?,u.age=? where u.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, user.getBank());
		query.setString(1, user.getBank());
		query.setInteger(2, user.getId());
		
		return (query.executeUpdate() > 0);
	}
	
	

}
