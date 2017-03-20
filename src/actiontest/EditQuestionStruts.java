package actiontest;


import pojotest.Test;

import com.opensymphony.xwork2.ActionSupport;

import dao.TestDao;

public class EditQuestionStruts extends ActionSupport {

	private String qid;
	private TestDao dao;
	Test test=null;
	@Override
	public String execute() throws Exception {
		dao=new TestDao();
		test=dao.viewTestDetail(qid);
		
		return SUCCESS;
	}
	public void setQid(String qid) {
		this.qid = qid;
	}
	public Test getTest() {
		return test;
	}
}
