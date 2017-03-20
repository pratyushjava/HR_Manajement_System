package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicantvacancy;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;

public class SubmitShortlistedApplicant extends ActionSupport implements SessionAware
{
	private ArrayList<Applicantvacancy> list=new ArrayList<Applicantvacancy>();
	private Map map;
	//private String fname;
	private CreateApplicantDao dao;
	
	@Override
	public String execute() throws Exception 
	{
	dao= new CreateApplicantDao();
	//appList= (ArrayList<Applicantvacancy>)map.get("viewshrtlist");
	list=(ArrayList<Applicantvacancy>)map.get("viewshrtlist");
	for(Applicantvacancy a:list)
	{
		
		if(dao.insertShortListed(a))
		{System.out.println("hello");}
	}
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) {
		map=arg0;
		
	}
	
}
