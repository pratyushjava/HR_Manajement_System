package action;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;
import dao.ScheduleInterviewDao;

import org.apache.struts2.interceptor.ServletRequestAware;

import pojo.Ischedule;


public class EditInterview extends ActionSupport  implements ServletRequestAware
{
	private String isid;
	private ScheduleInterviewDao dao;
	private Ischedule isch=null;
	HttpServletRequest request;
	
	public EditInterview()
	{
		System.out.println("In ViewScheduleInterviewStruts constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute() throws Exception
	{
		isch=dao.viewInterviewDetail(isid);
		request.setAttribute("isch", isch);
		return SUCCESS;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) 
	{
		this.request=arg0;
		
	}
	
	public void setIsid(String isid)
	{
		this.isid = isid;
	}
	
	public Ischedule getIsch()
	{
		return isch;
	}

}
