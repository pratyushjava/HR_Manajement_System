package actiontest;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojoapplicant.Applicant;
import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;

public class ResultGen extends ActionSupport implements SessionAware
{
	private Map session;
	private HashMap<Integer, String> hm1;
	private HashMap<Integer, Test> hm2;
	int result=0;
	TestDao dao=null;
	
	@Override
	public String execute()
	{
		dao=new TestDao();
		System.out.println( "in result gen action class");
		hm1=(HashMap<Integer, String>) session.get("ans");
		hm2=(HashMap<Integer, Test>) session.get("ques");
		int x=hm2.size();
		int count=1;
		System.out.println("x "+x);
		System.out.println("hm1 "+hm1);
		System.out.println("hm2 "+hm2);
		while(count<=x)
		{
			String a=hm1.get(count);
			
			Test ref=hm2.get(count);
			String ans=ref.getAns();
			System.out.println("question "+ref.getQuestion());
			System.out.println("correct ans "+ans);
			
			System.out.println("student ans "+a);
			
			if(ans.equals(a))
			{
				result++;
			}
			
			count++;
			
		}
		System.out.println("Result "+result);
Applicant appli=(Applicant)session.get("appli");
	String vid=	(String)session.get("vid");
	
		if(dao.submitResult(vid,appli.getAid(),result))
		{}
		return SUCCESS;
	}

	@Override
	public void setSession(Map arg0) 
	{
		session=arg0;
		
	}
	
	
}
