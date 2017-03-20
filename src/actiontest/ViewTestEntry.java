package actiontest;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.TestDao;

public class ViewTestEntry extends ActionSupport implements ModelDriven<Test>,
		SessionAware 
{

	private Test ref;
	private TestDao dao= new TestDao();
	private Map<String,Object> map;
	private ArrayList<Test> al;
	
	@Override
	public String execute() throws Exception
	{
		al=dao.viewTestQuestions();
		map.put("test",al);
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;

	}

	@Override
	public Test getModel() {
		
		return ref;
	}

	public ArrayList<Test> getAl() {
		return al;
	}

}
