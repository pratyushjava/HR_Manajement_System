package action;

import java.util.Map;



import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CreateVacancyDao2;


import pojoapplicant.Applicant;

public class EditApplicant1 extends ActionSupport implements ModelDriven<Applicant>,SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Applicant apli;
	private CreateVacancyDao2 dao;
	private Applicant user= new Applicant();
	private Map map;
	
	@Override
	public String execute() throws Exception 
	{		
		dao = new CreateVacancyDao2();
		String eid=(String) map.get("eid");
		
		String aid=(String) map.get("aid");
		String email=(String)map.get("aemail");
		
		System.out.println("aid is in execu method "+aid);
		System.out.println("email is in exec method "+email);
		apli = dao.updateApplicant(user, aid, email,eid);
		map.remove("sappli");
		map.put("sappli",apli);
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) {
		// TODO Auto-generated method stub
		map=arg0;
	}

	@Override
	public Applicant getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
}
