package actiontest;

import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.TestDao;

public class TestEntry extends ActionSupport implements ModelDriven<Test> 
{

	private Test ref=new Test();
	private TestDao dao=new  TestDao();
	
	public TestEntry()
	{
		System.out.println("in TestEntry action constructor");
	}
	
	@Override
	public String execute() throws Exception
	{
		dao.enterQuestion(ref);
		return SUCCESS;
	}
	
	@Override
	public Test getModel()
	{
		
		return ref;
	}

}
