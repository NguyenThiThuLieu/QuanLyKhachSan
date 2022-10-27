package com.hotel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.common.Constants;
import com.hotel.model.CustomerModel;
import com.hotel.model.RoomModel;

/**
 * @author Tien
 *
 * class RentDAO
 */
@Repository("rentDAO")
@Transactional(rollbackFor = Exception.class)
public class RentDAO {
	
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	/**
	 * phuong thuc lay du lieu phong cho
	 * 
	 * @param trangThai kieu int
	 * @param queryString kieu String
	 * @return
	 */
	@SuppressWarnings({ "rawtypes" })
	public List getEmptyRoom(int trangThai, String queryString) {
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery(queryString);
		query.setParameter("trangThai", trangThai);
		
		List list = query.list();
		
		return list;
	}
	
	/**
	 * phuong thuc lay thong tin khach hang dang thue 
	 * 
	 * @param maPhong kieu String
	 * @param trangThai kieu int
	 * @param queryString kieu String
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<?> getRentedInfo(int trangThai, String queryString) {
    	
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery(queryString);
		query.setParameter("trangThai", trangThai);
		
		List<?> list = query.list();
		
    	return list;
    }


	public int changeStatus(String roomID, int activityStatus, int roomStatus, String queryString) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<?> query = session.createSQLQuery(queryString);
		query.setParameter("activityStatus", activityStatus);
		query.setParameter("roomStatus", roomStatus);
		query.setParameter("roomID", roomID);
		
		int result = query.executeUpdate();
		
    	return result;
    }
	
	/**
	 * phuong thuc tim kiem phong
	 * 
	 * @param tenPhong kieu String
	 * @param trangThai kieu int
	 * @param queryString kieu String
	 * @return
	 */
	public List<?> search(String tenPhong, int trangThai, String queryString) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<?> query = session.createQuery(queryString);
		query.setParameter("trangThai", trangThai);
		query.setParameter("tenPhong", Constants.PERCENT_SYMBOL
				+ tenPhong.replaceAll(Constants.PERCENT_SYMBOL, Constants.EMPTY_STRING)
				+ Constants.PERCENT_SYMBOL);
		
		List<?> list = query.list();
		
    	return list;
	}
	
	public RoomModel getRoomByID(String maPhong, String queryString) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<?> query = session.createQuery(queryString);
		
		query.setParameter("maPhong", maPhong);
		
		RoomModel room = (RoomModel) query.getSingleResult();
		
    	return room;
    }
}
