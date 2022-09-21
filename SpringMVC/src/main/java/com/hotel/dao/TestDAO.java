/**
 * 
 */
package com.hotel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.model.userModel;

/**
 * @author Administrator
 *
 */
@Repository(value = "testDAO")
@Transactional(rollbackFor = Exception.class)
public class TestDAO {

	private SessionFactory sessionFactory;

	/**
	 * @return the sessionFactory
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * @param sessionFactory the sessionFactory to set
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	public List<userModel> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM com.hotel.model.userModel").list();
	}
}
