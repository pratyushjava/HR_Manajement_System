package action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Ischedule;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CreateVacancyDao2;
import dao.ScheduleInterviewDao;


public class EditInterview1 extends ActionSupport implements ModelDriven<Ischedule>,
		SessionAware {

	private ScheduleInterviewDao dao;
	private Ischedule ref=new Ischedule();
	private Map map;
	private List<Ischedule> list=null;
	
	public EditInterview1()
	{
		System.out.println("In ViewScheduleInterviewStruts constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute() throws Exception
	{
		
		
		String eid=(String)map.get("eid");
		dao.updateInterview(ref,eid);
		list=dao.viewScheduledInterview(eid);
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;

	}
	
	@Override
	public Ischedule getModel() {
		return ref;
	}
	public List<Ischedule> getAl() {
		return list;
	}

}
