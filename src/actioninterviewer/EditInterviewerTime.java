package actioninterviewer;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Interviewer;
import pojo.Ischedule;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class EditInterviewerTime  extends ActionSupport implements SessionAware
{
	String isid;
	InterviewerDao dao;
	Ischedule is;
	private Map map;
	@Override
	public String execute() throws Exception {
		dao=new InterviewerDao();
		is=dao.getSchedule(isid);
		map.put("is", is);
		return SUCCESS;
	}

	public void setIsid(String isid) {
		this.isid = isid;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

}
