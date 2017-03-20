package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;



import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


import dao.ScheduleInterviewDao;

public class ScheduleInterviewStruts extends ActionSupport implements ModelDriven<Vacancy>,SessionAware 
{

	private ScheduleInterviewDao dao;	
	private Vacancy vid=new Vacancy();
	private ArrayList<Vacancy> l1;
	private ArrayList<String> l2;
	private Map<String, Object> map;
	
	public ScheduleInterviewStruts()
	{
		System.out.println("in action const");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public Vacancy getModel()
	{
		
		return vid;
	}

	@Override
	public String execute()
	{
		String eid=(String) map.get("eid");
		l1=dao.selectVid(eid);
		l2=new ArrayList<String>();
		
		for(Vacancy i:l1)
			l2.add(i.getVid());
		map.put("list",l2);
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0)
	{
		map =arg0;
		
	}
	
	
}
