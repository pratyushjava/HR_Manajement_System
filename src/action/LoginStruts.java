package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Employee;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;

public class LoginStruts extends ActionSupport implements SessionAware{

	String eid;
	String epassword;
	CreateVacancyDao2 dao=null;
	private Map map;
	Employee emp=null;
	@Override
	public String execute() throws Exception {
		dao=new CreateVacancyDao2();
		emp=dao.checklogin(eid,epassword);
		String did=emp.getDid();
		if(did!=null)
		{
			System.out.println("correct");
			map.put("eid", eid);
			map.put("did", did);
			if(emp.getEtype().equals("hr"))
			{
			return SUCCESS;
			}
			else
				return INPUT;
		}
		else 
			{
			System.out.println("incorrect");
			return ERROR;
			}
		
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getEpassword() {
		return epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}
}
