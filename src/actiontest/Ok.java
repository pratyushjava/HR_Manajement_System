package actiontest;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class Ok extends ActionSupport implements SessionAware
{
	private HashMap<Integer, String> hm1=new HashMap<Integer, String>();
	 private Integer txt;
	 private String answer;
	private Map map;
	
	
	@Override
	public String execute() throws Exception {
		hm1=(HashMap<Integer, String>)map.get("ans");
		hm1.put(txt,answer);
		map.put("ans", hm1);
		String s=(String)map.get("s");
		map.put("s", answer);
	
		System.out.println(hm1.toString());
		return SUCCESS;
	}
	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}
	public void setTxt(Integer txt) {
		this.txt = txt;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
