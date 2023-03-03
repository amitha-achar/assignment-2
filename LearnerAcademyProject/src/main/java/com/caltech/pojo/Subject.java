package com.caltech.pojo;


import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;


@Entity
public class Subject {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int subjectid;
	
	@ManyToMany(mappedBy = "subject",fetch = FetchType.EAGER)
	private  Set<StudentClass> studentclass;
	public Set<StudentClass> getStudentclass() {
		return studentclass;
	}

	public void setStudentclass(Set<StudentClass> studentclass) {
		this.studentclass = studentclass;
	}

	private String subjectName;

	public int getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
		
	}


