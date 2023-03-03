package com.caltech.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;


import com.caltech.Util.DbUtil;
import com.caltech.pojo.Report;
import com.caltech.pojo.StudentClass;
import com.caltech.pojo.Subject;
import com.caltech.pojo.Teacher;

public class ClassDao 
{
	
	public List<StudentClass> display()
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from StudentClass");
		List<StudentClass> list = query.getResultList();
		trans.commit();
		session.close();
		return list;
	}
	
	public int deleteClass(int classid)
	{
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		Query q =  session.createQuery("delete from StudentClass where classid=" + classid);
		int value = (Integer)q.executeUpdate();
		trans.commit();
		session.close();
		return value;
	}
	public List<Report> getReport1(int classid)
	{
		List<Report> results = new ArrayList();
		
		StudentClass st = getEntity(classid);
		if(st!=null && st.getTeacher()!= null && st.getSubject() !=null) 
		{
			for(Teacher t: st.getTeacher())
			{
				Report r = new Report();
				r.setClassname(st.getClassname());
				r.setDname(t.getDname());
				r.setTeachername(t.getTeachername());
				results.add(r);
				
			}
		}
		
		return results;
	}
	
	public int edit(int classid)
	{
		/*
		 * DbUtil dbconn=new DbUtil(); Session session=dbconn.dbConn(); Transaction
		 * trans=session.beginTransaction(); Query q =
		 * session.createQuery("update StudentClass set teachername='" +
		 * t.getTeachername() + "' ,dname='" + t.getDname() +"' where teacherid=" +
		 * t.getTeacherid()); int value=(Integer) q.executeUpdate(); trans.commit();
		 * session.close(); return value;
		 */
	}
	
	public int insert(String classname) throws ClassNotFoundException, SQLException
	{
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();	
		StudentClass st = new StudentClass();
		st.setClassname(classname);		
		st.setSubject(null);
		st.setTeacher(null);
		int value=(Integer) session.save(st);
		trans.commit();
		session.close();
		return value;
	}
	 public int setteacherSubject(String classid, String teacherid, String subjectid)
	 {
		    SubjectDAO sdao = new SubjectDAO();
			TeacherDAO tdao = new TeacherDAO();
		    StudentClass st = getEntity(Integer.parseInt(classid));
			Subject sobj = sdao.getEntity(Integer.parseInt(subjectid));
			Teacher tobj = tdao.getEntity(Integer.parseInt(teacherid));
			/*
			 * if(sobj!= null && sobj.getStudentclass() !=null &&
			 * !sobj.getStudentclass().contains(st)) { sobj.getStudentclass().add(st); }
			 * if(tobj!= null && tobj.getStudentclass() !=null &&
			 * !tobj.getStudentclass().contains(st)) { tobj.getStudentclass().add(st); }
			 */
			
			if(st!= null && st.getSubject() !=null && !st.getSubject().contains(sobj))
			{
		    st.getSubject().add(sobj);
			}
			if(st!= null && st.getTeacher() !=null && !st.getTeacher().contains(tobj))
			{
		    st.getTeacher().add(tobj);
			}
			
		    DbUtil dbconn=new DbUtil();
		    
			Session session=dbconn.dbConn();
			Transaction trans=session.beginTransaction();			
			
			ArrayList<Subject> slist = new ArrayList<>();
			ArrayList<Teacher> tlist = new ArrayList<>();
			slist.add(sobj);
			tlist.add(tobj);
			//st.setSubject(slist);
			//st.setTeacher(tlist);
			
			 session.merge(st);
			 trans.commit();
			 session.close();	
			
			return 1;
	 }
	 public StudentClass getEntity(int classid)
		{
			DbUtil dbconn = new DbUtil();
			Session session = dbconn.dbConn();
			Transaction trans = session.beginTransaction();
			Query query=session.createQuery("from StudentClass where classid=" + classid);
			StudentClass subobj = (StudentClass)query.getSingleResult();
			trans.commit();
			session.close();
			return subobj;
		}
		
	 
}
