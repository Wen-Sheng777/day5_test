package Controller;

import com.opensymphony.xwork2.ActionSupport;

import DAO.test;
import model.student;

public class Add extends ActionSupport {
	private String name;
	private int chi;
	private int eng;
	private int math;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getChi() {
		return chi;
	}
	public void setChi(int chi) {
		this.chi = chi;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	
	public String execute() throws Exception
	{
		student s=new student();
		s.setName(getName());
		s.setChi(getChi());
		s.setEng(getEng());
		s.setMath(getMath());
		
		new test().addStudent(s);
		
		return "add";
	}

}
