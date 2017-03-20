package action;

import java.util.Map;



import javax.servlet.http.HttpSessionContext;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CreateVacancyDao2;

public class CreateVacancyStruts2 extends ActionSupport implements ModelDriven<Vacancy>,SessionAware
{

private Vacancy user=new Vacancy();
private CreateVacancyDao2 dao;
private Map map;

	@Override
	public Vacancy getModel() {
		return user;
	}

	@Override
	public String execute() throws Exception 
	{
		/*String eid="e12";
		map.put("eid",eid);
		String did="d12";
		map.put("did", did);*/
		String did=(String)map.get("did");
		String eid=(String)map.get("eid");
		dao=new CreateVacancyDao2();
		dao.create(user,eid,did);
		return SUCCESS;
	
	}

	@Override
	public void setSession(Map arg0)
	{
		map=arg0;
		
	}
}
