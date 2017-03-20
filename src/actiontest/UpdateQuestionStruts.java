package actiontest;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojo.Vacancy;
import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.TestDao;

public class UpdateQuestionStruts extends ActionSupport implements ModelDriven<Test>,SessionAware 
{
	Test test=new Test();
	private List<Vacancy> list=null;
	TestDao dao=null;
	private ArrayList<Test> al;
	private Map map;

	@Override
	public String execute() throws Exception {
		dao=new TestDao();
		dao.updateQuestion(test);
		al=dao.viewTestQuestions();
		map.put("test",al);
		return SUCCESS;
	}

	@Override
	public Test getModel() {
		
		return test;
	}

	@Override
	public void setSession(Map arg0) {
		map=arg0;
	}
}
