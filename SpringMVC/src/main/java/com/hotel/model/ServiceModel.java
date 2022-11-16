package com.hotel.model;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author Tien
 *
 * class ServiceModel
 */
@Entity
@Table(name = "dichvu")
public class ServiceModel implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaDV")
	private String maDV;
	@Column(name = "TenDV")
	private String tenDV;
	@Column(name = "GiaDV")
	private long giaDV;
	@OneToMany(mappedBy = "service")
	@JsonIgnore
	private List<ServiceUsingModel> serviceUsings;

	public String getMaDV() {
		return maDV;
	}

	public void setMaDV(String maDV) {
		this.maDV = maDV;
	}

	public String getTenDV() {
		return tenDV;
	}

	public void setTenDV(String tenDV) {
		this.tenDV = tenDV;
	}

	public long getGiaDV() {
		return giaDV;
	}

	public void setGiaDV(long giaDV) {
		this.giaDV = giaDV;
	}
	
	public List<ServiceUsingModel> getServiceUsings() {
		return serviceUsings;
	}

	public void setServiceUsings(List<ServiceUsingModel> serviceUsings) {
		this.serviceUsings = serviceUsings;
	}

	@Override
	public int hashCode() {
		return Objects.hash(maDV);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ServiceModel other = (ServiceModel) obj;
		return Objects.equals(maDV, other.maDV);
	}
}
