package actioninterviewer;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Interviewer;
import pojo.Ischedule;

import com.opensymphony.xwork2.ActionSupport;

import dao.InterviewerDao;

public class DisplayAllSchedules extends ActionSupport implements SessionAware
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ArrayList<Interviewer> list=null;
	private Map map;
	private String eid;
	private InterviewerDao dao;
	private Ischedule is;
	private ArrayList<Ischedule> islist=new ArrayList<Ischedule>();
	
@Override
public String execute() throws Exception {
	dao=new InterviewerDao();
	eid=(String)map.get("eid");
	list= dao.getInterviewer(eid);
	for(Interviewer a : list)
	{
		is=dao.getSchedule(a.getIsid());
		islist.add(is);
	}
	System.out.println("islist "+islist);
	return SUCCESS;
}

@Override
public void setSession(Map arg0)
{
	map=arg0;
	
}

public ArrayList<Ischedule> getIslist() {
	return islist;
}




}
