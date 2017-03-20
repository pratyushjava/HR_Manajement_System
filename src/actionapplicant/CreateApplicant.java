package actionapplicant;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import pojoapplicant.Applicant;
import daoapplicant.CreateApplicantDao;

public class CreateApplicant extends ActionSupport implements ModelDriven<Applicant> {

private Applicant appuser = new Applicant();
private CreateApplicantDao appdao ;

		@Override
		public Applicant getModel() {
			// TODO Auto-generated method stub
			return appuser;
		}
		@Override
	public String execute() throws Exception
	{
			appdao = new CreateApplicantDao();
			appdao.create(appuser);
			return SUCCESS;
			
	}
	
	
	
	

}
