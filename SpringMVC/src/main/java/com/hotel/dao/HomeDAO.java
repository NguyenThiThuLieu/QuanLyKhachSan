package com.hotel.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.common.Constants;

@Repository(value = "homeDAO")
@Transactional(rollbackFor = Exception.class)
public class HomeDAO {

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
	
	/**
	 * phuong thuc lay so luong phong
	 * 
	 * @param now
	 * @param queryString
	 * @return result kieu long
	 */
	@SuppressWarnings("rawtypes")
	public long GetNumOfRoom(Date now, String queryString) {
		Session session = this.sessionFactory.getCurrentSession();
		
		Query query = session.createQuery(queryString);
		query.setParameter("now", now);
		long numOfRoom = (long) query.uniqueResult();
		
		return numOfRoom;
	}
	
	@SuppressWarnings("rawtypes")
	public long GetNumOfEmtyRoom(String queryString) {
		Session session = this.sessionFactory.getCurrentSession();
		
		Query query = session.createQuery(queryString);
		query.setParameter("trangThai", Constants.ROOM_EMPTY);
		long numOfEmtyRoom = (long) query.uniqueResult();
		
		return numOfEmtyRoom;
	}
	
	@SuppressWarnings("rawtypes")
	public long GetNumOfRoomByStatus(String queryString, int status) {
		Session session = this.sessionFactory.getCurrentSession();
		
		Query query = session.createQuery(queryString);
		query.setParameter("trangThai", status);
		long numOfEmtyRoom = (long) query.uniqueResult();
		
		return numOfEmtyRoom;
	}
}
