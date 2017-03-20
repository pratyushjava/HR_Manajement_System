package actiontest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import java.util.Collections;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;

import pojotest.Test;

public class TestAction extends ActionSupport implements SessionAware
{	String qtype;
	private TestDao dao;
	private Map map;
	private ArrayList<Test> lt;
	private HashMap<Integer, Test> hm=new HashMap<Integer, Test>();
	private HashMap<Integer, String> hm1=new HashMap<Integer, String>();
	@Override
	public String execute()
	{
		dao=new TestDao();
		String vid=(String)map.get("vid");
		lt=dao.reterieveQuestions(qtype,vid);
		System.out.println("lt"+lt);
		Collections.shuffle(lt);
		
		System.out.println("lt1 after shuffle "+lt);
		int x=1;
		for(Test i:lt)
		{	
			
			hm.put(x,i);
			
			x++;
		}
		
		map.put("ques", hm);
		map.put("ans", hm1);
		
	
		return SUCCESS;
	}


	public ArrayList<Test> getLt1() 
	{
		return lt;
	}


	@Override
	public void setSession(Map arg0)
	{
		map=arg0;
		
	}


	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	
	

}
