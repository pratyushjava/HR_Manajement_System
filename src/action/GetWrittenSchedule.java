package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import pojo.Wschedule;

import dao.ViewWrittenScheduleDao;



public class GetWrittenSchedule extends ActionSupport implements ServletRequestAware
{
	private String wscid;
	private ViewWrittenScheduleDao dao;
	Wschedule ws=null;
	HttpServletRequest request;
	@Override
	public String execute() throws Exception {
		dao=new ViewWrittenScheduleDao();
		ws=dao.viewWrittenScheduleDetail(wscid);
		request.setAttribute("ws", ws);
		return SUCCESS;
	}
	public void setWscid(String wscid) {
		this.wscid = wscid;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	public Wschedule getWs() {
		return ws;
	}

	

}
