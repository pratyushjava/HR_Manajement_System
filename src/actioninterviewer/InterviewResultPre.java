package actioninterviewer;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Iresult;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class InterviewResultPre extends ActionSupport implements SessionAware
{
	private ArrayList<Iresult> al1;
	private ArrayList<String> al2=new ArrayList<String>();
	private Map map;
	private InterviewerDao dao;
	
	@Override
	public String execute() throws Exception 
	{
		dao=new InterviewerDao();
		
		al1=dao.getVacancyId();
		for(Iresult i:al1)
			al2.add(i.getVid());
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0)
	{
		map=arg0;
		
	}

	public ArrayList<String> getAl2() 
	{
		return al2;
	}
}
