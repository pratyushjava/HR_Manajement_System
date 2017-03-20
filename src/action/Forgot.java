package action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;

public class Forgot extends ActionSupport {
	String email;
	String eid;
	String newpassword;
	String renewpassword;
	CreateVacancyDao2 dao=null;
	@Override
	public String execute() throws Exception {
		dao=new CreateVacancyDao2();
		if(dao.checkemail(email,eid,newpassword))
		return SUCCESS;
		else return ERROR;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getRenewpassword() {
		return renewpassword;
	}
	public void setRenewpassword(String renewpassword) {
		this.renewpassword = renewpassword;
	}

}
