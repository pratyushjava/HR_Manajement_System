package action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;

public class DeleteAction extends ActionSupport implements SessionAware
{
	private CreateVacancyDao2 dao;
	private String vid;
	private List<Vacancy> list=null;
	private Map map;
	public void setVid(String vid)
	{
		this.vid = vid;
	}
@Override
public String execute() throws Exception 
{
	dao=new CreateVacancyDao2();
	dao.deleteVacancy(vid);
	String eid=(String)map.get("eid");
	list=dao.getAllVacancies(eid);
		return SUCCESS;
	
}


public List<Vacancy> getList() {
	return list;
}
@Override
public void setSession(Map arg0) {
	map=arg0;
}
}
