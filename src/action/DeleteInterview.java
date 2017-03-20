package action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Ischedule;



import com.opensymphony.xwork2.ActionSupport;


import dao.ScheduleInterviewDao;

public class DeleteInterview extends ActionSupport implements SessionAware 
{

	private ScheduleInterviewDao dao;
	private String isid;
	private List<Ischedule> list=null;
	private Map map;
	
	public DeleteInterview()
	{
		System.out.println("In DeleteInterview action constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	
	@Override
	public String execute()
	{
		
		dao.deleteInterview(isid);
		String eid=(String)map.get("eid");
		list=dao.viewScheduledInterview(eid);
		System.out.println("list values "+list);
		
		return SUCCESS;
	}
	
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;

	}
	
	public void setIsid(String isid)
	{
		this.isid = isid;
	}
	
	public List<Ischedule> getAl() {
		return list;
	}

}
