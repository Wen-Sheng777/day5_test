package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import DAO.test;
import model.student;

public class query extends ActionSupport {
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String execute() throws Exception
	{
		student s=new test().queryID(getId());
		
		Map session=ActionContext.getContext().getSession();
		
		session.put("S", s);

		return "query";

	}

}
