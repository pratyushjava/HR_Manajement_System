package action;

import java.util.List;



import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;
import pojo.Vacancy;

public class GetVacancy extends ActionSupport implements  ServletRequestAware{

	private String vid;
	private CreateVacancyDao2 dao;
	Vacancy vaca=null;
	HttpServletRequest request;
	@Override
	public String execute() throws Exception {
		dao=new CreateVacancyDao2();
		vaca=dao.viewVacancyDetail(vid);
		request.setAttribute("vaca", vaca);
		return SUCCESS;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	public Vacancy getVaca() {
		return vaca;
	}
	
	
}
