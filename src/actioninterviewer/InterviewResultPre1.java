package actioninterviewer;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Iresult;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class InterviewResultPre1 extends ActionSupport implements SessionAware
{
	private InterviewerDao dao;
	private String vid;
	private ArrayList<Iresult> al1;
	private ArrayList<String> al2=new ArrayList<String>();
	private Map map;
	
	@Override
	public String execute() throws Exception 
	{
		dao=new InterviewerDao();
		al1=dao.getApplicantid(vid);
		for(Iresult i:al1)
			al2.add(i.getAid());
		map.put("vidint", vid);
		return SUCCESS;
	}

	public void setVid(String vid) 
	{
		this.vid = vid;
	}

	public ArrayList<String> getAl2() 
	{
		return al2;
	}

	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}
}
