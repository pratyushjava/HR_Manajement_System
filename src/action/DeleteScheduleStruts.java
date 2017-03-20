package action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;


import pojo.Wschedule;



import com.opensymphony.xwork2.ActionSupport;

import dao.ViewWrittenScheduleDao;



public class DeleteScheduleStruts extends ActionSupport implements ServletRequestAware,SessionAware
{

	private ViewWrittenScheduleDao dao;
	private String wscid;
	
	private List<Wschedule> list=null;
	HttpServletRequest request;
	Map map;
@Override
public String execute() throws Exception 
{
	String eid=(String)map.get("eid");
	dao=new ViewWrittenScheduleDao();
	dao.deleteWrittenSchedule(wscid);
	list=dao.getAllWrittenSchedule(eid);
	request.setAttribute("list", list);
	return SUCCESS;
	
}

	@Override
	public void setServletRequest(HttpServletRequest arg0) 
	{
		this.request=arg0;
		
	}
	
	public void setWscid(String wscid) {
		this.wscid = wscid;
	}
	
	public List<Wschedule> getList() {
		return list;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;		
	}


}
