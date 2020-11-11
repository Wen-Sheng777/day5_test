package Controller;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import DAO.test;
import model.student;

public class update extends ActionSupport {
	private int id;
	private String name;
	private int chi;
	private int eng;
	private int math;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
		
		new test().updateStudent(getId(), s);
//		HttpServletResponse response = ServletActionContext.getResponse();
//		response.sendRedirect("update2.jsp");
		
		return "update";
	
	}
	

}
