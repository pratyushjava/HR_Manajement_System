package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Employee;
import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.ScheduleInterviewDao;

public class AssignInterviewer extends ActionSupport implements SessionAware
{

	
	private static final long serialVersionUID = 1L;
	private ScheduleInterviewDao dao;
	private ArrayList<Vacancy> l1;
	private ArrayList<String> list1;
	private ArrayList<Employee> l2;
	private ArrayList<String> list2;
	private Map<String,Object> map;
	
	
	public AssignInterviewer()
	{
		System.out.println("In AssignInterviewer constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute()
	{
		String eid=(String) map.get("eid");
		l1=dao.selectVid1(eid);
		l2=dao.selectEid();
		list1=new ArrayList<String>();
		list2=new ArrayList<String>();
		for(Vacancy i:l1)
			list1.add(i.getVid());
		for(Employee i:l2)
		{
			list2.add(i.getEid());
			System.out.println("Array list Values "+i.getEid());
		}
		map.put("vlist", list1);
		map.put("elist", list2);
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}
}
