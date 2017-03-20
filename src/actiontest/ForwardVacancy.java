package actiontest;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ForwardVacancy extends ActionSupport implements SessionAware{
	
	
	Map map;
	String vid;
	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(vid);
		map.put("vid", vid);
		return SUCCESS;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

}
