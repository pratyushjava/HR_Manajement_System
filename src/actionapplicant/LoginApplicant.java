package actionapplicant;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicant;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;



public class LoginApplicant extends ActionSupport  implements SessionAware{

	private static final long serialVersionUID = 1L;

	String aemail1;
	String apassword;
	CreateApplicantDao dao=null;
	private Map map;
	Applicant applic;
	
	@Override
	public String execute() throws Exception {
		dao=new CreateApplicantDao();
		
		 applic=dao.checklogin(aemail1,apassword);
		if(applic!=null)
		{
			map.put("aid", applic.getAid());
			map.put("appli", applic);
			
			
			return SUCCESS;
				}else
			return ERROR;
		
	}
	

	public String getAemail1() {
		return aemail1;
	}

	public void setAemail1(String email) {
		this.aemail1 = email;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

}
