package com.caltech.pojo;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.ManyToMany;


@Entity
public class StudentClass 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int classid;
  
  private String classname; 
  
  
  //@OneToMany(cascade = CascadeType.ALL,mappedBy = "studentclass")
  @LazyCollection(LazyCollectionOption.FALSE)
  @ManyToMany(cascade = { CascadeType.ALL })
  @JoinTable(
      name = "StudentClass_Subject", 
      joinColumns = { @JoinColumn(name = "classid") }, 
      inverseJoinColumns = { @JoinColumn(name = "subjectid") }
  )
  private Set<Subject> subject;
  
 // @OneToMany(cascade = CascadeType.ALL,mappedBy = "studentclass")
  @LazyCollection(LazyCollectionOption.FALSE)
  @ManyToMany(cascade = { CascadeType.ALL })
  @JoinTable(
      name = "StudentClass_Teacher", 
      joinColumns = { @JoinColumn(name = "classid") }, 
      inverseJoinColumns = { @JoinColumn(name = "teacherid") }
  )
  private Set<Teacher> teacher;
  
  public void setTeacher(Set<Teacher> teacher) {
		this.teacher = teacher;
	}
  public Set<Teacher> getTeacher()
  {
	return teacher;
  }
  
  public int getClassid() {
	return classid;
}


public void setClassid(int classid) {
	this.classid = classid;
}


public String getClassname() {
	return classname;
}


public void setClassname(String classname) {
	this.classname = classname;
}

  public StudentClass()
  {
	  
  }


public Set<Subject> getSubject() {
	return subject;
}


public void setSubject(Set<Subject> subject) {
	this.subject = subject;
}
  
}
