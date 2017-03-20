package dao;

import java.util.ArrayList;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


import pojoapplicant.Applicant;
import pojoapplicant.Applicantvacancy;
import pojoapplicant.Wresult;
import pojotest.Test;
import pojo.Vacancy;
import utils.HibernateUtils;

public class TestDao 
{
	
	public ArrayList<Vacancy> reterieveVid(String eid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Vacancy> al=null;
		String vstatus="open";
		
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and vstatus=:b").setParameter("a", eid).setParameter("b", vstatus).list();
		 System.out.println("array list "+al);
		 tx.commit();
		
		
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally 
		{
			if (s != null)
				s.close();
		
		}
		return al;
	}
	
	
	
	public void enterQuestion(Test table) throws Exception
	{
		Session s=null;
		Transaction tx=null;
		
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		
		s.save(table);
		tx.commit();
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (s != null)
				s.close();
		}
	}
	
	public ArrayList<Test> viewTestQuestions()
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Test> q=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		 q=(ArrayList<Test>)s.createQuery("from Test").list();
		 System.out.println("saved in table");
		 System.out.println("Arraylist"+q);
		 tx.commit();
		
		
		}
		catch (HibernateException e) 
		{
			if (tx != null)
				tx.rollback();
			throw e;
		} 
		finally 
		{
			if (s != null)
				s.close();
		}
		return q;
	}
	public Test viewTestDetail(String qid)
	{
		Test test=null;
		Session s=null;
		Transaction tx=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		 test=(Test)s.createQuery("from Test where qid=:a").setParameter("a", qid).uniqueResult();
		 System.out.println("saved in table");
		 System.out.println("Test"+test.toString());
		 tx.commit();
		}
		catch (HibernateException e) 
		{
			if (tx != null)
				tx.rollback();
			throw e;
		} 
		finally 
		{
			if (s != null)
				s.close();
		}
		
		return  test;
	}
	public void updateQuestion(Test test)
	{
		Session s=null;
		Transaction tx=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("updating in table");
		s.update(test);
		tx.commit();
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (s != null)
				s.close();
		}
	}
	public void deleteVacancy(String qid)
	{
		Session s=null;
		Transaction tx=null;
		
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		String hql="from Test where qid=:a";
		Test q=(Test)s.createQuery(hql).setParameter("a",qid).uniqueResult();
		s.delete(q);
		 System.out.println("deleted from table");
		 tx.commit();
		
		
		}
		catch (HibernateException e) 
		{
			if (tx != null)
				tx.rollback();
			throw e;
		} 
		finally 
		{
			if (s != null)
				s.close();
		}
	}
	public ArrayList<Vacancy> selectVid()
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Vacancy> al=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy").list();
		 System.out.println("array list "+al);
		 tx.commit();
		
		
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally 
		{
			if (s != null)
				s.close();
		
		}
		return al;
	}
	
	public ArrayList<Test> reterieveQuestions(String qtype,String vid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Test> al=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		// al=(ArrayList<Test>)s.createQuery("from Test where qtype=:a and vid=:b").setParameter("a",qtype).setParameter("b", vid).list();
		al=(ArrayList<Test>)s.createQuery("from Test").list();
		 System.out.println("array list "+al);
		 tx.commit();
		
		
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally 
		{
			if (s != null)
				s.close();
		
		}
		return al;
	}
	
	public boolean submitResult(String vid,String aid,int result)
	{
		Session s=null;
		Transaction tx=null;
		String abb=Integer.toString(result);
		try
		{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			System.out.println("aid "+aid);
			Applicantvacancy av=(Applicantvacancy)s.createQuery("from Applicantvacancy where aid=:a and vid=:b").setParameter("a", aid).setParameter("b", vid).uniqueResult();
			System.out.println("av"+av.toString() );
			Wresult w=(Wresult)s.createQuery("from Wresult where vid=:a and avid=:b").setParameter("a", vid).setParameter("b", av.getAvid()).uniqueResult();
			System.out.println("w "+w.toString());
			if(w.getWscore().equals("-1"))
			{
				av.setAvstatus("given");
				s.update(av);
				w.setWscore(abb);
				w.setWappered("p");
				s.update(w);
				tx.commit();
			}
			else {
				
			}
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally 
		{
			if (s != null)
				s.close();
		
		}
		return true;
	}
	
	
	public ArrayList<Vacancy> getAppliedVacancy(String aid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Applicantvacancy> applivaca=null;
		ArrayList<Vacancy> vaca=null;;
		Vacancy v=null;
		try
		{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			applivaca=(ArrayList<Applicantvacancy>)s.createQuery("from Applicantvacancy where aid=:a and avstatus=:b").setParameter("a", aid).setParameter("b", "Not Req").list();
			vaca=new ArrayList<Vacancy>();
			for(Applicantvacancy av:applivaca)
			{
				v=(Vacancy)s.createQuery("from Vacancy where vid=:a and scheduledstatus=:b").setParameter("a", av.getVid()).setParameter("b", "written scheduled").uniqueResult();
				if(v!=null)
				vaca.add(v);
				//System.out.println("vid in dao "+v.getVid());
			}
			System.out.println("vaca in dao "+vaca.toString());
			 tx.commit();
		}
		catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally 
		{
			if (s != null)
				s.close();
		
		}
		return vaca;
	}
}


