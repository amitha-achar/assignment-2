package com.caltech.pojo;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Teacher {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int teacherid;
private String teachername;

@ManyToMany(mappedBy = "teacher",fetch = FetchType.EAGER)
private Set<StudentClass> studentclass;

public int getTeacherid() {
	return teacherid;
}
public void setTeacherid(int teacherid) {
	this.teacherid = teacherid;
}
public String getTeachername() {
	return teachername;
}
public Set<StudentClass> getStudentclass() {
	return studentclass;
}
public void setStudentclass(Set<StudentClass> studentclass) {
	this.studentclass = studentclass;
}
public void setTeachername(String teachername) {
	this.teachername = teachername;
}
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
private String dname;

}
