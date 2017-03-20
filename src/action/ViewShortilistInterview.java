package action;

import java.util.ArrayList;

import pojo.Iresult;

import com.opensymphony.xwork2.ActionSupport;

import dao.ScheduleInterviewDao;

public class ViewShortilistInterview extends ActionSupport 
{

	private ScheduleInterviewDao dao;
	private ArrayList<Iresult> al;
	
	public ViewShortilistInterview()
	{
		System.out.println("in ViewShortilistInterview constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	@Override
	public String execute() throws Exception 
	{
		al=dao.viewshortlistinterview();
		return SUCCESS;
	}

	public ArrayList<Iresult> getAl() 
	{
		return al;
	}
	
}
