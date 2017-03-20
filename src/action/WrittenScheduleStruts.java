package action;



import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import pojo.*;
import dao.*;



public class WrittenScheduleStruts extends ActionSupport implements ModelDriven<Wschedule>,SessionAware
{

private Wschedule user=new Wschedule();
private ViewWrittenScheduleDao dao;
private Map map;
	@Override
	public Wschedule getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	@Override
	public String execute() throws Exception 
	{	String eid=(String)map.get("eid");
		dao=new ViewWrittenScheduleDao();
		dao.create(user,eid);
		return SUCCESS;
	
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
		
	}
}
