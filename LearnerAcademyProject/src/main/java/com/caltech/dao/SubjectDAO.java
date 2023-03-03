package com.caltech.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.caltech.Util.DbUtil;
import com.caltech.pojo.Subject;
import com.caltech.pojo.Teacher;

public class SubjectDAO
{
	public List<Subject> display()
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Subject");
		List<Subject> list = query.getResultList();
		trans.commit();
		session.close();
		return list;
	}
	
	public int insert(String subjectname)
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Subject s = new Subject();
		s.setSubjectName(subjectname);
		int res = (Integer) session.save(s);
		trans.commit();
		session.close();
		return res;		
	}
	
	public int edit(Subject s)
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q = session.createQuery("update Subject set subjectname='" + s.getSubjectName() + "' where subjectid=" + s.getSubjectid());
		int value=(Integer) q.executeUpdate();
		trans.commit();
		session.close();
		return value;
		
	}
	public int deleteSubject(int subjectid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query q =  session.createQuery("delete from Subject where subjectid=" + subjectid);
		int value = (Integer)q.executeUpdate();
		trans.commit();
		session.close();
		return value;
	}
	
	public Subject getEntity(int subid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query query=session.createQuery("from Subject where subjectid=" + subid);
		Subject subobj = (Subject)query.getSingleResult();
		trans.commit();
		 session.close();
		return subobj;
	}
	

}
