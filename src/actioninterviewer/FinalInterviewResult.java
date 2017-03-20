package actioninterviewer;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class FinalInterviewResult extends ActionSupport implements SessionAware
{
	String aid;
	String istatus;
	private InterviewerDao dao;
	private Map map;
	
	
	@Override
	public String execute() throws Exception 
	{
		dao=new InterviewerDao();
		String vid=(String) map.get("vidint");
		System.out.println();
		System.out.println("aid "+aid );
		System.out.println("istatus "+istatus);
		dao.finalResult(aid,vid,istatus);
		
		
		return SUCCESS;
	}

	

	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}



	public void setAid(String aid) {
		this.aid = aid;
	}



	public void setIstatus(String istatus) {
		this.istatus = istatus;
	}
}
