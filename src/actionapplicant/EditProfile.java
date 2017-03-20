package actionapplicant;


import java.util.Date;
import java.util.Map;
import java.util.List;

import javassist.expr.NewArray;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import daoapplicant.CreateApplicantDao;
import pojo.Vacancy;
import pojoapplicant.Applicant;

public class EditProfile extends ActionSupport implements ModelDriven<Applicant>,SessionAware{
	private Applicant apli;
	private CreateApplicantDao dao;
	private Applicant user= new Applicant();
	private Applicant temp;
	private Map map;
	
	@Override
	public String execute() throws Exception 
	{		
		dao = new CreateApplicantDao();
		String aid=(String) map.get("aid");
		temp=(Applicant)map.get("appli");
		
		String email=temp.getAemail1();
		Date doc=temp.getAdocreation();
		String status =temp.getAstatus();
		String ref=temp.getReferenceid();
		
		user.setAdocreation(doc);
		user.setAstatus(status);
		user.setReferenceid(ref);
		
		apli = dao.update(user, aid, email);
		map.remove("appli");
		map.put("appli",apli);
		
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
