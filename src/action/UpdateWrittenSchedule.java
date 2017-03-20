package action;

import java.util.List;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;


import pojo.Wschedule;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ViewWrittenScheduleDao;



public class UpdateWrittenSchedule extends ActionSupport implements ModelDriven<Wschedule>,SessionAware 
{

	private Wschedule user=new Wschedule();
	private ViewWrittenScheduleDao dao=null;
	
	private List<Wschedule> list=null;
	Map map;
	@Override
	public String execute() throws Exception {
		dao=new ViewWrittenScheduleDao();
	//	String vid=(String)map.get("vid");
	//	String eid=(String)map.get("eid");
//		String vid=(String)map.get("vid");System.out.println(vid);
		String eid=(String)map.get("eid");System.out.println(eid);
		dao.update(user,eid);
		
		
		list=dao.getAllWrittenSchedule(eid);
		return SUCCESS;
	}



	@Override
	public Wschedule getModel() {
		return user;
	}
	public List<Wschedule> getList() {
		return list;
	}



	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}

}
