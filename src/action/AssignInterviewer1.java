package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Interviewer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ScheduleInterviewDao;

public class AssignInterviewer1 extends ActionSupport implements ModelDriven<Interviewer>,SessionAware
{

	private Interviewer tab=new Interviewer();
	private ScheduleInterviewDao dao;
	private Map<String,Object> map;
	private String[] check;
	private String vid;
	boolean b;
	public AssignInterviewer1()
	{
		System.out.println("In AssignInterviewer1 constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute()
	{
		for(String i:check){
			System.out.println(i);
		//String eid=(String) map.get("eid");
		System.out.println("vid ="+vid);
		b=dao.assignInterviewer(tab,i,vid);
			}
		return SUCCESS;
	}
	
	@Override
	public Interviewer getModel() 
	{
		
		return tab;
	}

	@Override
	public void setSession(Map arg0) 
	{
		
		map=arg0;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

	public void setCheck(String[] check) {
		this.check = check;
	}
	
	
	
}
