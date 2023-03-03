package com.caltech.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import javax.persistence.Query;

import com.caltech.Util.DbUtil;
import com.caltech.dbutil.ProductDBUtil;
import com.caltech.pojo.*;



public class TeacherDAO
{
	public int insert(Teacher newteacher) throws ClassNotFoundException, SQLException
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();		
		int value=(Integer) session.save(newteacher);
		trans.commit();
		session.close();
		return value;

	}
	
	public List<Teacher> display()
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Teacher");
		List<Teacher> list = query.getResultList();
		trans.commit();
		session.close();
		return list;
	}
	
	public int edit(Teacher t)
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q = session.createQuery("update Teacher set teachername='" + t.getTeachername() + "' ,dname='" + t.getDname() +"' where teacherid=" + t.getTeacherid());
		int value=(Integer) q.executeUpdate();
		trans.commit();
		session.close();
		return value;
		
	}
	public int deleteTeacher(int teacherid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query q =  session.createQuery("delete from Teacher where teacherid=" + teacherid);
		int value = (Integer)q.executeUpdate();
		trans.commit();
		session.close();
		return value;
	}
	public Teacher getEntity(int tid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query query=session.createQuery("from Teacher where teacherid=" + tid);
		Teacher subobj = (Teacher)query.getSingleResult();
		trans.commit();
		session.close();
		return subobj;
	}
	
}
 