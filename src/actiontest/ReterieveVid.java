package actiontest;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;

public class ReterieveVid extends ActionSupport implements SessionAware
{
	private TestDao dao;
	private Vacancy vid=new Vacancy();
	private ArrayList<Vacancy> l1;
	private ArrayList<String> l2;
	private Map session;
	
	@Override
	public String execute()
	{
		dao=new TestDao();
		String eid=(String) session.get("eid");
		System.out.println("eid "+eid);
		l1=dao.reterieveVid(eid);
		l2=new ArrayList<String>();
		
		for(Vacancy i:l1)
			l2.add(i.getVid());
		
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0)
	{
		session=arg0;
		
	}

	public ArrayList<String> getL2() 
	{
		return l2;
	}
	
	
	
}
