package action;

import java.util.List;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CreateVacancyDao2;

public class EditVacancyAction extends ActionSupport implements ModelDriven<Vacancy>,SessionAware
{
	private Vacancy user=new Vacancy();
	private CreateVacancyDao2 dao;
	private Map map;
	private List<Vacancy> list=null;

	@Override
	public String execute() throws Exception {
		dao=new CreateVacancyDao2();
		String did=(String)map.get("did");
		String eid=(String)map.get("eid");
		dao.update(user,eid,did);
		list=dao.getAllVacancies(eid);
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

	@Override
	public Vacancy getModel() {
		return user;
	}
	public List<Vacancy> getList() {
		return list;
	}
	
}
