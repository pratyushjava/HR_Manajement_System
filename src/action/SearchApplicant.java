package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicant;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;

public class SearchApplicant extends ActionSupport implements SessionAware{
	
	private String aid;
	private CreateVacancyDao2 dao;
	private Applicant applic;
	private Map map;
	
	@Override
	public String execute() throws Exception  {
		// TODO Auto-generated method stub
		dao=new CreateVacancyDao2();
		System.out.println("in action defore dao call"+aid);
		applic =dao.viewapplicant(aid);
		if(applic!=null)
		{
			map.put("appli", applic);
			
			return SUCCESS;
		}else
			return ERROR;
	}


	public String getAid() {
		return aid;
	}


	public void setAid(String aid) {
		this.aid = aid;
	}
	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

}
