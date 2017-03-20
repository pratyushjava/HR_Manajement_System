package actiontest;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;

public class RightFrameTest extends ActionSupport implements SessionAware
{

	private Test t;
	private String s;
	private Map map;
	private int qid;
	private HashMap<Integer, Test> ref;
	private HashMap<Integer, String> options = new HashMap<Integer, String>();
	
	@Override
	public String execute()
	{
		System.out.println("in right framr set n qid value "+qid);
		ref=(HashMap<Integer, Test>) map.get("ques");
		System.out.println("ref "+ref);
		t=ref.get(qid);
		System.out.println("t "+t);
		if(t!=null)
		{
			map.put("q",t);
			
		}
		options.put(1, t.getOptions1());
		options.put(2, t.getOptions2());
		options.put(3, t.getOptions3());
		options.put(4, t.getOptions4());
		System.out.println( "options from database "+options.toString());
		map.put("options", options);
		map.put("tqid", qid);
		HashMap<Integer, String> ans=(HashMap<Integer, String>)map.get("ans");
		s=ans.get(qid);
		System.out.println("user answer"+s);
		map.put("s", s);
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map arg0) 
	{
		map=arg0;
		
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	

	
}
