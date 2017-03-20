package actioninterviewer;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Interviewer;
import pojo.Ischedule;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class UpdateInterviewerTime extends ActionSupport implements SessionAware
{
	private Map map;
	private String itime;
	String eid;
	InterviewerDao dao;
	private ArrayList<Ischedule> islist=new ArrayList<Ischedule>();
	ArrayList<Interviewer> list=null;
	@Override
	public String execute() throws Exception {
		dao=new InterviewerDao();
		Ischedule is=(Ischedule)map.get("is");
		is.setItime(itime);
		if(dao.updateInterTime(is))
		{
			eid=(String)map.get("eid");
			list= dao.getInterviewer(eid);
			for(Interviewer a : list)
			{
				is=dao.getSchedule(a.getIsid());
				islist.add(is);
			}
			System.out.println("islist "+islist);
		return SUCCESS;}
		else return ERROR;
	}
	
	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

	public void setItime(String itime) {
		this.itime = itime;
	}
	public ArrayList<Ischedule> getIslist() {
		return islist;
	}


	
}
