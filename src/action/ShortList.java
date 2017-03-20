package action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ViewWrittenScheduleDao;

public class ShortList extends ActionSupport implements  SessionAware 
{
	private Map map;
	private String eid;
	private ArrayList<Vacancy> l3;
	private ArrayList<String> l4;
	private ViewWrittenScheduleDao shrtDao;
	
	
	

	@Override
	public String execute() throws Exception 
	{
		shrtDao = new ViewWrittenScheduleDao();
	String eid=(String)map.get("eid");
	//	String eid="e1";
		l3=shrtDao.selectVidForShortList(eid);
		l4=new ArrayList<String>();
		for(Vacancy i:l3)
			l4.add(i.getVid());
		map.put("vaca", l4);
		return SUCCESS;
		
	}
	
	/*public ArrayList<String> getVaca() 
	{
		return l4;
	}*/
	
	@Override
	public void setSession(Map arg0)
	{
		map=arg0;
	}

}
