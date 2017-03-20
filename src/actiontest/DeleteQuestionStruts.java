package actiontest;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;


import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;



public class DeleteQuestionStruts extends ActionSupport implements SessionAware{
	private TestDao dao;
	private String qid;
	private List<Test> list=null;
	private Map map;
	private ArrayList<Test> al;
@Override
public String execute() throws Exception 
{
	dao=new TestDao();
	dao.deleteVacancy(qid);
	al=dao.viewTestQuestions();
	map.put("test",al);
		return SUCCESS;
	
}

public void setQid(String qid)
{
	this.qid = qid;
}

@Override
public void setSession(Map arg0) {
	map=arg0;
}
}
