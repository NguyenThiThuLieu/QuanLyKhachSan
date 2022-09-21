/**
 * 
 */
package com.hotel.service;

import java.util.List;

import com.hotel.dao.TestDAO;
import com.hotel.model.userModel;

/**
 * @author Administrator
 *
 */
public class AddService {
	
	private TestDAO testDAO;

	/**
	 * @return the testDAO
	 */
	public TestDAO getTestDAO() {
		return testDAO;
	}

	/**
	 * @param testDAO the testDAO to set
	 */
	public void setTestDAO(TestDAO testDAO) {
		this.testDAO = testDAO;
	}


	public int add(int n1, int n2) {
		return n1+n2;
	}

	  public List<userModel> findAll() {
	    return testDAO.findAll();
	  }
}
