package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Wresult;

import com.opensymphony.xwork2.ActionSupport;

import dao.ScheduleInterviewDao;

public class SaveShortilistInterview extends ActionSupport implements SessionAware
{

	private Map map;
	private ArrayList<Wresult> wr;
	private ScheduleInterviewDao dao;
	
	public SaveShortilistInterview()
	{
		System.out.println("In SaveShortilistInterview");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute() throws Exception 
	{
		wr=(ArrayList<Wresult>) map.get("shortlistint");
		System.out.println("w "+wr);
		for(Wresult i:wr)
		{
			if(dao.SaveShortilistInterview(i))
			{System.out.println("hello");}
		}
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}
	
}
