package actionapplicant;

import java.util.ArrayList;
import java.util.List;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;

public class ViewAppliedVacancy extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	
	CreateApplicantDao dao=null;

	private ArrayList<Vacancy> list=null ;
	private Map map;
	private String aid;
	
	@Override
	public String execute() throws Exception {
	 
		dao=new CreateApplicantDao();
		aid= (String)map.get("aid");
		
		System.out.println("from session aid = "+aid);
		
		list=dao.viewappliedvacancy(aid);
	
		 if(list!=null)
			 return SUCCESS;
		 else
			 return ERROR;
	}
	public List<Vacancy> getList() {
		return list;
	}
	
	@Override
	public void setSession(Map arg0) {
		map = arg0;
		
		}
	
	

}
