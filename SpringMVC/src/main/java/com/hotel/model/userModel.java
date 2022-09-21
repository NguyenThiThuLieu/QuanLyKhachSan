package com.hotel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "khach_hang")
public class userModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="makh")
	private String maKH;
	@Column(name="tenkh")
	private String tenKH;
	@Column(name="gioitinh")
	private String gioiTinh;
	@Column(name="diachi")
	private String diaChi;
	@Column(name="sdt")
	private String sdt;
	
	/**
	 * @return the maKH
	 */
	public String getMaKH() {
		return maKH;
	}
	/**
	 * @param maKH the maKH to set
	 */
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	/**
	 * @return the tenKH
	 */
	public String getTenKH() {
		return tenKH;
	}
	/**
	 * @param tenKH the tenKH to set
	 */
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}
	/**
	 * @return the gioiTinh
	 */
	public String getGioiTinh() {
		return gioiTinh;
	}
	/**
	 * @param gioiTinh the gioiTinh to set
	 */
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @return the sdt
	 */
	public String getSdt() {
		return sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	
	
}
