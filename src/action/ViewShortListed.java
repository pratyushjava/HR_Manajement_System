package action;

import java.math.BigDecimal;
import java.util.ArrayList;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicantvacancy;

import com.opensymphony.xwork2.ActionSupport;

import daoapplicant.CreateApplicantDao;

public class ViewShortListed extends ActionSupport implements SessionAware 
{
		
	private String vid;
	
	private BigDecimal sscpercent;
	private BigDecimal gpercent;
	private Map map;
	private ArrayList<Applicantvacancy> list;
	private CreateApplicantDao dao;
//	private double hscpercent;
	private BigDecimal hscpercent;
	
	
	
	@Override
	public String execute() throws Exception 
	{
		dao = new CreateApplicantDao();
	//	vid="1";
		//hscpercent=50.56;
		list=dao.selectApplicant(vid,hscpercent,sscpercent,gpercent);
		System.out.println(list.toString());
		map.put("viewshrtlist", list);
		
		return SUCCESS;
		
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;

	}

	

	

	public void setSscpercent(BigDecimal sscpercent) {
		this.sscpercent = sscpercent;
	}

	public void setGpercent(BigDecimal gpercent) {
		this.gpercent = gpercent;
	}

	public void setHscpercent(BigDecimal hscpercent) {
		this.hscpercent = hscpercent;
	}

	public ArrayList<Applicantvacancy> getList() {
		return list;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

	

	

	

	

	

}
