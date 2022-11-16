package com.hotel.model;

import java.io.Serializable;
import java.util.List;

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
 * class CustomerModel
 */
@Entity
@Table(name = "khachhang")
public class CustomerModel implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="MaKH")
	private String maKH;
	@Column(name="TenKH")
	private String tenKH;
	@Column(name="CMND")
	private String cmnd;
	@Column(name="SDT")
	private String sdt;
	@Column(name="QuocTich")
	private String quocTich;
	@Column(name="VIP")
	private String vip;
	@OneToMany(mappedBy = "customer")
	@JsonIgnore
	private List<RentedRoomModel> rentedRooms;
	@OneToMany(mappedBy = "customer")
	@JsonIgnore
	private List<ServiceUsingModel> serviceUsings;
	
	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getTenKH() {
		return tenKH;
	}

	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getQuocTich() {
		return quocTich;
	}

	public void setQuocTich(String quocTich) {
		this.quocTich = quocTich;
	}

	public String getVip() {
		return vip;
	}

	public void setVip(String vip) {
		this.vip = vip;
	}

	public List<RentedRoomModel> getRentedRooms() {
		return rentedRooms;
	}

	public void setRentedRooms(List<RentedRoomModel> rentedRooms) {
		this.rentedRooms = rentedRooms;
	}

	public List<ServiceUsingModel> getServices() {
		return serviceUsings;
	}

	public void setServices(List<ServiceUsingModel> serviceUsings) {
		this.serviceUsings = serviceUsings;
	}
}
