package actionapplicant;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;
import pojoapplicant.Applicant;

import com.opensymphony.xwork2.ActionSupport;

import dao.CreateVacancyDao2;
import daoapplicant.CreateApplicantDao;

import pojoapplicant.Applicantvacancy;
public class ApplyVacancies extends ActionSupport implements SessionAware

{

	private CreateApplicantDao dao;
	private Map map;
	private String vid;
	
	

	private Applicant applic;
	private Applicantvacancy av;
	private String aid;
	private String fname;
	private String mname;
	private String lname;
	private Date dt;
	private String st;
	private BigDecimal sscpercent;
	private BigDecimal hscpercent;
	private BigDecimal gpercent;
	CreateVacancyDao2 dao1=null;
	Vacancy vaca=null;
	
	

	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}
	
	@Override
	public String execute() throws Exception 
	{	av=new Applicantvacancy();
		dao =new CreateApplicantDao();
		dt = new Date();
		dao1=new CreateVacancyDao2();
		vaca=dao1.viewVacancyDetail(vid);
		System.out.println(vaca.toString());
		
		applic=(Applicant)map.get("appli");
		st="Not Req";
		System.out.println(applic.toString());
		
		aid =applic.getAid();System.out.println(aid);
		fname=applic.getAfname();System.out.println(fname);
		mname=applic.getAmname();System.out.println(mname);
		lname=applic.getAlname();System.out.println(lname);
		sscpercent=applic.getSscpercent();
		hscpercent=applic.getHscpercent();
		gpercent=applic.getGpercent();
		
		
		av.setAid(aid);
		av.setAfname(fname);
		av.setAmname(mname);
		av.setAlname(lname);
		av.setTitle(vaca.getTitle());
		av.setVid(vid);
		av.setApplieddate(dt);
		av.setAvstatus(st);
		av.setGpercent(gpercent);
		av.setSscpercent(sscpercent);
		av.setHscpercent(hscpercent);
		System.out.println(vid);
		int aa=dao.applyVacancy(av,aid,vid);
		if(aa==1)
		{
			return SUCCESS; 
		}
		else if(aa==2)
		{
			return INPUT;
		}
		else
			return ERROR;
		
	}
	

	
	public void setVid(String vid)
	{
		System.out.println("in setter of vid"+vid);
		this.vid = vid;
	}

	
	

}
