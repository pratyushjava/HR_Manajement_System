package actionapplicant;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;
import pojoapplicant.Applicant;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;

public class GetVacancy extends ActionSupport implements SessionAware
{
	Map map;
	Applicant appli;
	ArrayList<Vacancy> l1;
	ArrayList<String> l2=null;
	TestDao dao;
	
	@Override
	public String execute() throws Exception {
		//NoTestSchedule.jsp
		
		appli=(Applicant)map.get("appli");
		System.out.println(appli.toString());
		//if(appli.getAstatus().equals("shortlisted"))
		{
		dao=new TestDao();
		System.out.println(appli.toString());
		System.out.println(appli.getAid());
		l1=dao.getAppliedVacancy(appli.getAid());
		if(l1!=null)
		{
			l2=new ArrayList<String>();
			for(Vacancy i:l1)
				{
				l2.add(i.getVid());
				System.out.println(i.getVid());
				}
			map.put("list",l2);
			System.out.println(l1.toString());
			return SUCCESS;
		}
		}
		return INPUT;
	}
	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}
}
