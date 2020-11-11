package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.student;

public class test implements implDao {

	public static void main(String[] args) {
	
//			student s=new student();
//			s.setName("豬豬");
//			s.setChi(1);
//			s.setEng(2);
//			s.setMath(3);
//			
//			new test().addStudent(s);
		
//		System.out.println(new test().queryID(1).getName());

//		new test().deleteStudent(7);
		
		student s=new student();
		s.setName("pp");
		s.setChi(22);
		s.setEng(22);
		s.setMath(22);
		
		new test().updateStudent(8, s);
		
		
		
	}

	@Override
	public void addStudent(Object o) {
		student s=(student)o;
		Session se=implDao.getSe();
		
		Transaction tx=se.beginTransaction();
		
		se.save(s);
		
		tx.commit();
		
	}

	@Override
	public student queryID(int id) {
		Session se=implDao.getSe();
		
		student s=(student)se.get(student.class, id);
			
		return s;

	}
	
	public student[] quer() {
		Session se=implDao.getSe();
		String HQL="from student";
		
		Query q1=se.createQuery(HQL);
		
		List<student> l=q1.list();
		student[] s=l.toArray(new student[l.size()]);
		return s;

	}

	@Override
	public void deleteStudent(int id) {
		try {
		student s=queryID(id);
		Session se=implDao.getSe();
		Transaction tx=se.beginTransaction();
		
		se.delete(s);
		
		tx.commit();
		}catch(IllegalArgumentException e) {
			System.out.println("test().updateStudent(int id, Object o)沒抓到資料");
			e.printStackTrace();
		}
		
	}

	@Override
	public void updateStudent(int id, Object o) {
		try {
		student s2=(student)o;
		
		student s=queryID(id);
		s.setName(s2.getName());
		s.setChi(s2.getChi());
		s.setEng(s2.getEng());
		s.setMath(s2.getMath());
		
		Session se=implDao.getSe();
		Transaction tx=se.beginTransaction();
		
		se.update(s);
		
		tx.commit();
		}catch(NullPointerException e) {
			System.out.println("test().updateStudent(int id, Object o)沒抓到資料");
			e.printStackTrace();
		}
	}
	
	

	
	
	
	
	
	
	
	
	
}
