package action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Iresult;
import pojoapplicant.*;

import com.opensymphony.xwork2.ActionSupport;

import dao.ScheduleInterviewDao;

public class ShortilistInterview extends ActionSupport implements SessionAware
{

	private String com;
	private String vacancy;
	private ScheduleInterviewDao dao;
	private ArrayList<Wresult> al1;
	private ArrayList<Wresult> al2=new ArrayList<Wresult>();
	private Map session;
	
	public ShortilistInterview()
	{
		System.out.println("in ShortilistInterview constructor");
		dao=ScheduleInterviewDao.getDao();
	}
	
	
	@Override
	public String execute() throws Exception 
	{
		System.out.println("com"+com);
		System.out.println("vid "+vacancy);
		al1=dao.getWresult(vacancy);
		if(al1!=null)
		{
			for(Wresult i:al1)
			{
				//dao.changestatus(i);
			}
		}
		
		
		
		for(Wresult i:al1)
		{
			int a,b;
			a=Integer.parseInt(com);
			b=Integer.parseInt(i.getWscore());
			System.out.println(i.getWscore());
			if(a<=b)
			{
				System.out.println(i.getWscore());
				System.out.println(i);
				al2.add(i);
			}
			
		}
		System.out.println("al2 ="+al2);
		session.put("shortlistint", al2);
		return SUCCESS;
	}



	public void setCom(String com) 
	{
		this.com = com;
	}


	public void setVacancy(String vacancy) 
	{
		this.vacancy = vacancy;
	}


	@Override
	public void setSession(Map arg0) 
	{
		session=arg0;
		
	}
}
