package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.student;

public interface implDao {
	
	static Session getSe()
	{
		Configuration conn=new Configuration().configure();
		SessionFactory sf=conn.buildSessionFactory();
		Session se=sf.openSession();
		
		return se;
	}
	
	void addStudent(Object o);
	student queryID(int id);
	void deleteStudent(int id);
	void updateStudent(int id,Object o);
	

}
