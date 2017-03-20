package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicant;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CreateVacancyDao2;

import freemarker.template.utility.Execute;

public class CreateApplicant extends ActionSupport implements ModelDriven<Applicant>,SessionAware{

	private Applicant appuser = new Applicant();
	private CreateVacancyDao2 dao;
	private Map map;
	
	
		@Override
		public String execute() throws Exception {
			// TODO Auto-generated method stub
			String eid=(String) map.get("eid");
	
			
			
			dao = new CreateVacancyDao2();
			dao.CreateApplicant(appuser,eid);
			return SUCCESS;
		}
	
		
		@Override
		public Applicant getModel() {
			// TODO Auto-generated method stub
			return appuser;
		}


		@Override
		public void setSession(Map arg0) {
			// TODO Auto-generated method stub
			map=arg0;
		}

}
