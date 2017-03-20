package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class Logout extends ActionSupport implements SessionAware {

	private Map map;
	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("m in execute methd");
		map.remove("eid");
		
		map.clear();
		System.out.println("id is "+map.get("id"));
		return SUCCESS;
	}
	
	
	public Logout() {
		super();
		// TODO Auto-generated constructor stub
		System.out.println("m in cons of logout ");
	}


	@Override
	public void setSession(Map arg0) {
		// TODO Auto-generated method stub
		map=arg0;
	}

}
