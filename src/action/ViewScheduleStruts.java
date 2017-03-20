package action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.ViewWrittenScheduleDao;


import pojo.Wschedule;


public class ViewScheduleStruts extends ActionSupport implements ServletRequestAware,SessionAware
{
	private Wschedule user=new Wschedule();
	private ViewWrittenScheduleDao dao = null;
	HttpServletRequest request;
	private List<Wschedule> list;
	private Map map;
	@Override
	public String execute() throws Exception 
	{
		dao=new ViewWrittenScheduleDao();
		String eid=(String)map.get("eid");
		list=dao.getAllWrittenSchedule(eid);
		System.out.println(list.toString());
		request.setAttribute("list", list);
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
	}
		
		public List<Wschedule> getList() 
		{
			return list;
		}

		@Override
		public void setSession(Map arg0) {
			map=arg0;
		}
		
	

}
