package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.ScheduleInterviewDao;

public class ShortilistInterviewSelectVid extends ActionSupport implements SessionAware
{
	private Map map;	
	private ScheduleInterviewDao dao;
	private ArrayList<Vacancy> l1;
	private ArrayList<String> l2=new ArrayList<String>();
	
	public ShortilistInterviewSelectVid()
	{
		System.out.println("in ShortilistInterviewSelectVid constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute() throws Exception 
	{
		String eid=(String) map.get("eid");
		l1=dao.selectInterviewVid(eid);
		l2=new ArrayList<String>();
		
		for(Vacancy i:l1)
			l2.add(i.getVid());
		map.put("vidlist",l2);
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}

}
