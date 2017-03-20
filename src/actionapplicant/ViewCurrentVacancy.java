package actionapplicant;

import java.util.List;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;

public class ViewCurrentVacancy extends ActionSupport
{
	
	CreateApplicantDao dao=null;

	private List<Vacancy> list=null ;

	@Override
	public String execute() throws Exception {
	 dao=new CreateApplicantDao();
	 list=dao.viewcurrentvacancy();
	 if(list!=null)
	 return SUCCESS;
	 else
		 return ERROR;
	}
public List<Vacancy> getList() {
	return list;
}

}
