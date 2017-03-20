package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import pojo.Vacancy;
import dao.CreateVacancyDao2;

public class SearchVacancy extends ActionSupport 
{
	private String vid;
	private CreateVacancyDao2 dao;
	Vacancy list=null;
	
	@Override
	public String execute() throws Exception {
		dao=new CreateVacancyDao2();
		System.out.println(vid);
		list=dao.viewVacancyDetail(vid);
	//	request.setAttribute("list", list);
		System.out.println(vid);
		return SUCCESS;
	}
	
		
	
	public Vacancy getList() {
		return list;
	}

	public String getVid() {
		return vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}
	
}
