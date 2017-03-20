package actionapplicant;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;
import freemarker.template.utility.Execute;


public class ForgetPassword extends ActionSupport{
	String aemail1;
	String aid;
	String newpassword;
	String renewpassword;
	
	CreateApplicantDao dao= null;

	
	@Override
	public String execute() throws Exception {
		dao=new CreateApplicantDao();
		if(dao.changepass(aemail1, aid, newpassword))
			return SUCCESS;
			else return ERROR;
	}
	
	public String getAemail1() {
		return aemail1;
	}

	public void setAemail1(String aemail1) {
		System.out.println(aemail1);
		this.aemail1 = aemail1;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		System.out.println(aid);
		this.aid = aid;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		System.out.println(newpassword);
		this.newpassword = newpassword;
	}

	public String getRenewpassword() {
		return renewpassword;
	}

	public void setRenewpassword(String renewpassword) {
		this.renewpassword = renewpassword;
	}
	

}
