package com.hotel.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Tien
 *
 * class ReservationRoomModel
 */
@Entity
@Table(name = "datphong")
public class ReservationRoomModel implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "MaKH")
	private int maKH;
	@Column(name = "NgayDen")
	private Date ngayDen;
	@Column(name = "NgayDi")
	private Date ngayDi;
	@Id
	@Column(name = "MaPhong")
	private String maPhong;
	@Column(name = "TienCoc")
	private Double tienCoc;
	@Id
	@Column(name = "MaNV")
	private String maNV;
	@Column(name = "TrangThai")
	private int trangThai;
	@Column(name = "NgayThucHien")
	private Date ngayThucHien;
	
	public int getMaKH() {
		return maKH;
	}

	public void setMaKH(int maKH) {
		this.maKH = maKH;
	}

	public Date getNgayDen() {
		return ngayDen;
	}

	public void setNgayDen(Date ngayDen) {
		this.ngayDen = ngayDen;
	}

	public Date getNgayDi() {
		return ngayDi;
	}

	public void setNgayDi(Date ngayDi) {
		this.ngayDi = ngayDi;
	}

	public String getMaPhong() {
		return maPhong;
	}

	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}

	public Double getTienCoc() {
		return tienCoc;
	}

	public void setTienCoc(Double tienCoc) {
		this.tienCoc = tienCoc;
	}

	public String getMaNV() {
		return maNV;
	}

	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public Date getNgayThucHien() {
		return ngayThucHien;
	}

	public void setNgayThucHien(Date ngayThucHien) {
		this.ngayThucHien = ngayThucHien;
	}
}
