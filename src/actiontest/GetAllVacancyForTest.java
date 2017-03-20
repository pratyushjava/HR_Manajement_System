package actiontest;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;
import dao.ViewWrittenScheduleDao;

public class GetAllVacancyForTest extends ActionSupport //implements SessionAware
{
	private ArrayList<Vacancy> l1;
	private ArrayList<String> l2;
	private TestDao dao;
	private Map map;
	@Override
	public String execute() throws Exception {
		dao=new TestDao();
		//String eid=(String)map.get("eid");
		l1=dao.selectVid();
		l2=new ArrayList<String>();
		for(Vacancy i:l1)
			l2.add(i.getVid());
		return SUCCESS;
	}
	
	public ArrayList<String> getL2() {
		return l2;
	}

	//@Override
	//public void setSession(Map arg0) {
	//	map=arg0;
	//}
}
