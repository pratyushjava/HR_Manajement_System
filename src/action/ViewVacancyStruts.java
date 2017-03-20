package action;

import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;

public class ViewVacancyStruts extends ActionSupport implements SessionAware//ServletRequestAware
{
	private Vacancy user=new Vacancy();
	private CreateVacancyDao2 dao = null;
//	HttpServletRequest request;
	private List<Vacancy> list;
	private Map map;
	
	@Override
	public String execute() throws Exception 
	{
		dao=new CreateVacancyDao2();
		String eid=(String)map.get("eid");
		list=dao.getAllVacancies(eid);
		System.out.println(list.toString());
//		request.setAttribute("list", list);
		return SUCCESS;
	}

//	@Override
//	public void setServletRequest(HttpServletRequest arg0) {
//		this.request=arg0;
		
//	}

	public List<Vacancy> getList() {
		return list;
	}

@Override
public void setSession(Map arg0) {
	map=arg0;	
}
	
}
