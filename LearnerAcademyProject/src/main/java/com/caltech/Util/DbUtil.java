package com.caltech.Util;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import java.util.Set;

public class DbUtil 
{
	StandardServiceRegistry ssr=null;
	Metadata md=null;
	static SessionFactory sf=null;
	Session session=null;
	
	public Session dbConn() 
	{
		
		if(sf == null)
		{
	//to load the config file
		ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		//in the config file go to metadata level
		md=new MetadataSources(ssr).getMetadataBuilder().build();
		//go to meta data of SessionFactory
		sf=md.getSessionFactoryBuilder().build();
		System.out.println("first time hibernate objects are built");
		}
		//to perform crud operation we use this object
		session=sf.openSession();
		
		
		return session;
     }

}
