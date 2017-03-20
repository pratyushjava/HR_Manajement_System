package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Ischedule;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ScheduleInterviewDao;

public class ViewScheduleInterviewStruts extends ActionSupport implements
		ModelDriven<Ischedule>, SessionAware 
{
	private Map<String,Object> session;
	private Ischedule ref=new  Ischedule();
	private ArrayList<Ischedule> al;
	private ScheduleInterviewDao dao;
		
	
	public ViewScheduleInterviewStruts()
	{
		System.out.println("In ViewScheduleInterviewStruts constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public void setSession(Map arg0)
	{
		session=arg0;

	}
	
	@Override
	public String execute()
	{
		String eid=(String) session.get("eid");
		System.out.println("eid hh"+eid);
		al=dao.viewScheduledInterview(eid);
		
		return SUCCESS;
	}

	@Override
	public Ischedule getModel() 
	{
		
		return ref;
	}

	public ArrayList<Ischedule> getAl() {
		return al;
	}
	
	

}
