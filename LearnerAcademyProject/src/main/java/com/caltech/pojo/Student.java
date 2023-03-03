package com.caltech.pojo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stuid;
	
	private String firstname;
	private String lastname;
	private int stuphone;
	private String Address;
	private Date dob;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "classid")
	private StudentClass stuclass;
	
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getStuphone() {
		return stuphone;
	}
	public void setStuphone(int stuphone) {
		this.stuphone = stuphone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public StudentClass getStuclass() {
		return stuclass;
	}
	public void setStuclass(StudentClass stuclass) {
		this.stuclass = stuclass;
	}

}
