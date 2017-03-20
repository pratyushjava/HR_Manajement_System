package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Ischedule;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ScheduleInterviewDao;

public class ScheduleInterviewStruts1 extends ActionSupport implements
		ModelDriven<Ischedule>, SessionAware
{

	private Ischedule isch=new Ischedule();
	
	private Map<String,Object> map1;
	private ScheduleInterviewDao dao1;
	private String vid;
	
	public ScheduleInterviewStruts1()
	{
		System.out.println("in action const");
		dao1=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute()
	{
		String eid=(String) map1.get("eid");
		System.out.println("eid"+eid);
		String vid=isch.getVacancy();
		map1.put("vacancy",vid);
		dao1.setInterview(isch,eid,vid);
		return SUCCESS;
	}
	
	
	@Override
	public void setSession(Map arg0) 
	{
		map1=arg0;

	}

	@Override
	public Ischedule getModel() {
		
		return isch;
	}
	
	public String setVacancy()
	{
		return vid;
	}

}
