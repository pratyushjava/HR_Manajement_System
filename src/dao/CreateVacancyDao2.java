package dao;

import java.util.Date;

import java.util.GregorianCalendar;
import java.util.List;

import javax.xml.crypto.Data;

import org.hibernate.HibernateException;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


import pojo.Employee;
import pojo.Vacancy;
import pojoapplicant.Applicant;
import utils.HibernateUtils;

public class CreateVacancyDao2 {
	public void create(Vacancy table,String eid,String did) throws Exception
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		Date d=new Date();
		table.setDocr(d);
		table.setVstatus("open");
		table.setScheduledstatus("not scheduled");
		table.setDid(did);
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		//Query q=s.createQuery("from vacancy2 where eid:=?");
		
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
	public void update(Vacancy table,String eid,String did)
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		table.setDid(did);
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("updating in table");
		s.update(table);
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

	public List<Vacancy> getAllVacancies(String eid)
	{
		Session s=null;
		Transaction tx=null;
		List<Vacancy> q=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		 q=(List<Vacancy>)s.createQuery("from Vacancy where eid=:a").setParameter("a", eid).list();
		 System.out.println("saved in table");
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
	
	public void deleteVacancy(String vid)
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
		String hql="from Vacancy where vid=:a";
		Vacancy q=(Vacancy)s.createQuery(hql).setParameter("a",vid).uniqueResult();
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
	
	public Employee checklogin(String a,String b)
	{
		Session s=null;
		Transaction tx=null;
		Employee emp=null;
		try
		{
			System.out.println("before get session login");
			s=HibernateUtils.getSession();
			System.out.println("before transaction login");
			tx=s.beginTransaction();
			System.out.println(" in table");
			emp=(Employee)s.createQuery("from Employee where eid=:a and epassword=:b").setParameter("a",a).setParameter("b", b).uniqueResult();
			System.out.println("retrieved login");
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
		if (emp!=null){return emp;}
		else return null;
	}
	
	public boolean checkemail(String email,String eid,String newpassword)
	{
		Session s=null;
		Transaction tx=null;
		Employee emp=null;
		try
		{
			s=HibernateUtils.getSession();
			tx=s.beginTransaction();
			emp=(Employee)s.createQuery("from Employee where email=:a and eid=:b").setParameter("a",email).setParameter("b", eid).uniqueResult();
			System.out.println("retrieved login");
			if(emp!=null)
			{
				emp.setEpassword(newpassword);
				s.update(emp);
			}
			
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
		if (emp!=null){return true;}
		else return false;
	}
	public Vacancy viewVacancyDetail1(String vid)
	{
		Session s=null;
		Transaction tx=null;
		Vacancy v=null;
		try
		{
			s=HibernateUtils.getSession();
			tx=s.beginTransaction();
			v=(Vacancy)s.createQuery("from Vacancy where vid=:a").setParameter("a", vid).uniqueResult();
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
		return v;
	}
	
	public Vacancy viewVacancyDetail(String vid)
	{
		Session s=null;
		Transaction tx=null;
		Vacancy v=null;
		try
		{
			s=HibernateUtils.getSession();
			tx=s.beginTransaction();
			v=(Vacancy)s.createQuery("from Vacancy where vid=:a").setParameter("a", vid).uniqueResult();
			//System.out.println(v.getE);
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
		return v;
	}
	
	public Applicant viewapplicant(String a)
	{
		Session s=null;
		Transaction tx=null;
		Applicant appli=null;
		try
		{
			System.out.println("before get session login");
			s=HibernateUtils.getSession();
			System.out.println("before transaction login");
			tx=s.beginTransaction();
			System.out.println(" in table");
			System.out.println("in dao before quary "+a);
			appli=(Applicant)s.createQuery("from Applicant where aid=:a").setParameter("a",a).uniqueResult();
			System.out.println("in view applicant doa layer"+appli.getAid());
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
		if (appli!=null)
			return appli;
		else {return null;}
	}
	
	public void CreateApplicant(Applicant table,String eid)throws Exception
	{
		Session s=null;
		Transaction tx=null;
		
		Date d=new Date();
		table.setAdocreation(d);
		
		String st="not in process";
		table.setAstatus(st);
		
		String ref=eid;
		table.setReferenceid(ref);
		
		
		try
		{System.out.println("before get session");
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
	
	public Applicant updateApplicant(Applicant user,String aid,String loginemail,String eid)
	{	Applicant apli=null;
		Session s=null;
		Transaction tx=null;
		
		Date d=new Date();
		user.setAdocreation(d);
		
		String st="not in process";
		user.setAstatus(st);
		
		String ref=eid;
		user.setReferenceid(ref);
		
		user.setAid(aid);
		user.setAemail1(loginemail);
		
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("updating in table");
		s.update(user);
		apli=(Applicant)s.createQuery("from Applicant where aid=:a").setParameter("a",aid).uniqueResult();
		
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
		
		return apli;
	}
	
}
