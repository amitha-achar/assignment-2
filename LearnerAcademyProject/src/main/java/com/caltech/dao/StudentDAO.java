package com.caltech.dao;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.caltech.Util.DbUtil;
import com.caltech.pojo.Student;
import com.caltech.pojo.StudentClass;


public class StudentDAO 
{
	public List<Student> display()
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Student");
		List<Student> list = query.getResultList();
		trans.commit();
		session.close();
		return list;
	}
	
	public int insert(Student newstudent) throws ClassNotFoundException, SQLException
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();	
		Query query = session.createQuery("from StudentClass where classid="+ newstudent.getStuclass().getClassid());
		StudentClass stu = (StudentClass) query.getSingleResult();
		newstudent.setStuclass(stu);
		int value=(Integer) session.save(newstudent);
		trans.commit();
		session.close();
		return value;

	}
	
	public int edit(Student t)
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query q = session.createQuery("update Student "
				+ "set Firstname='" + t.getFirstname() 
				+ "' ,Lastname='" + t.getLastname() 
				+"' where studentid=" + t.getStuid());
		int value=(Integer) q.executeUpdate();
		trans.commit();
		session.close();
		return value;
		
	}
		
	public int deleteStudent(int stuid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query q =  session.createQuery("delete from Student where stuid=" + stuid);
		
		int value = (Integer)q.executeUpdate();
		trans.commit();
		session.close();
		return value;
	}	
	public List<Student> getReport(int classid)
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Student where classid="+ classid);
		List<Student> list = query.getResultList();
		trans.commit();
		session.close();
		return list;
	}

}
