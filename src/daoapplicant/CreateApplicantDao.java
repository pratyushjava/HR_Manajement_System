package daoapplicant;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import pojoapplicant.Applicantvacancy;
import pojoapplicant.Wresult;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


import pojo.Employee;
import pojo.Vacancy;
import pojoapplicant.Applicant;
import utils.HibernateUtils;

public class CreateApplicantDao {

	public void create(Applicant table) throws Exception
	{
		Session s=null;
		Transaction tx=null;
		Date d=new Date();
		table.setAdocreation(d);
		
		String st="not in process";
		table.setAstatus(st);
		
		String ref="e1";
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
	
	
	public Applicant checklogin(String a,String b)
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
			System.out.println(a);
			System.out.println(b);
			appli=(Applicant)s.createQuery("from Applicant where aemail1=:a and apassword=:b").setParameter("a",a).setParameter("b", b).uniqueResult();
			System.out.println(appli.getAid());
			System.out.println("retrieved login");
			
			//System.out.println(emp.getAemail1());
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
	
	
	public boolean changepass(String aemail1,String aid,String newpassword)
	{
		Session s=null;
		Transaction tx=null;
		Applicant appli =null;
		try
		{
			System.out.println("before get session login");
			s=HibernateUtils.getSession();
			System.out.println("before transaction login");
			tx=s.beginTransaction();
			System.out.println(" in table");
			System.out.println(aemail1);
			System.out.println(aid);
			System.out.println(newpassword);
			
			appli=(Applicant)s.createQuery("from Applicant where aemail1=:a and aid=:b").setParameter("a",aemail1).setParameter("b", aid).uniqueResult();
			System.out.println(appli.getAid());
			System.out.println("retrieved login");
			if(appli!=null)
			{
				appli.setApassword(newpassword);
				s.update(appli);
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
		if (appli!=null)
			{return true;}
		else 
			return false;
	}
	
	public List<Vacancy> viewcurrentvacancy()
	{
		List<Vacancy> list=null;
		Session s=null;
		Transaction tx=null;
		try
		{
			System.out.println("before get session login");
			s=HibernateUtils.getSession();
			System.out.println("before transaction login");
			tx=s.beginTransaction();
			System.out.println(" retr in table");
			list=(List<Vacancy>)s.createQuery("from Vacancy where vstatus=:a").setParameter("a", "open").list();
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
		if (list!=null)
		{return list;}
	else 
		return null;
	}
	
	public Applicant update(Applicant user,String aid,String loginemail)
	{	Applicant apli=null;
		Session s=null;
		Transaction tx=null;
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
		} finally 
		{
			if (s != null)
				s.close();	
		}
		
		return apli;
	}
	
	public int applyVacancy(Applicantvacancy table,String aid,String vid) throws Exception
	{
		Session s=null;
		Transaction tx=null;
		Applicantvacancy av=null;
		Applicant ap=null;
		try
		{System.out.println("before get session");
		s=HibernateUtils.getSession();
		
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		System.out.println("savinn in table");
		av=(Applicantvacancy)s.createQuery("from Applicantvacancy where aid=:a and vid=:b and avstatus=:c").setParameter("a", aid).setParameter("b", vid).setParameter("c", "Not Req").uniqueResult();
		if(av==null)
		{
		s.save(table);
		System.out.println("after");
		ap=(Applicant)s.createQuery("from Applicant where aid=:a").setParameter("a", aid).uniqueResult();
		ap.setAstatus("in process");
		s.update(ap);
		tx.commit();
		
		return 1;
		}
		else
			return 2;
		
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
	
	public boolean insertShortListed(Applicantvacancy table) throws Exception
	{
			
		Session s=null;
		Transaction tx=null;
		Wresult wr=null;
		try
		{
	
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			
			System.out.println("before transaction");
			tx=s.beginTransaction();
			
			System.out.println("savinn in table");
		
		String vid=table.getVid();
		String avid=table.getAvid();
		wr=(Wresult)s.createQuery("from Wresult where vid=:a and avid=:b").setParameter("a", vid).setParameter("b", avid).uniqueResult();
		if (wr!=null)
		{return false;}
		String afname=table.getAfname();
		String amname=table.getAmname();
		String alname=table.getAlname();
		System.out.println("avid=" +avid);
		wr=new Wresult();
		wr.setAvid(avid);
		wr.setWscore("-1");
		System.out.println("gg");
		wr.setAfname(afname);
		wr.setAmname(amname);
		wr.setVid(vid);
		wr.setWstatus("nselected");
		wr.setAlname(alname);
		//	table.setAdocreation(d);
		
		//String st="not in process";
		//table.setAstatus(st);
		
		//String ref="e1";
		//table.setReferenceid(ref);
		
		s.save(wr);
		Applicant ap=(Applicant)s.createQuery("from Applicant where aid=:a").setParameter("a", table.getAid()).uniqueResult();
		ap.setAstatus("shortlisted");
		s.update(ap);
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
		return true;
	}
	
	
	public ArrayList<Applicantvacancy> selectApplicant(String vid, BigDecimal hscpercent,BigDecimal sscpercent,BigDecimal gpercent)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Applicantvacancy> al=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println(vid);
		System.out.println(hscpercent);
		System.out.println(vid);
		//al=(ArrayList<Applicantvacancy>)s.createQuery("from Applicantvacancy x where x.vid=:a and x.hscpercent=:b").setParameter("a", vid).setParameter("b",hscpercent ).list();
		 al=(ArrayList<Applicantvacancy>)s.createQuery("from Applicantvacancy where vid=:a and hscpercent>=:b and sscpercent>=:c and gpercent>=:d").setParameter("a", vid).setParameter("b", hscpercent).setParameter("c", sscpercent).setParameter("d", gpercent).list();
		 System.out.println("array list "+al);
		 tx.commit();
		System.out.println("after commit");
		
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

	public ArrayList<Vacancy> viewappliedvacancy( String aid)
	{
		Vacancy vaca=null;
		ArrayList<Vacancy> list=null;
		ArrayList<Applicantvacancy> ls;
		Session s=null;
		Transaction tx=null;
		try
		{
			System.out.println("before get session login");
			s=HibernateUtils.getSession();
			System.out.println("before transaction login");
			//System.out.println("aid in dao is "+aid);
			tx=s.beginTransaction();
			System.out.println(" retr in table");
						
			ls=(ArrayList<Applicantvacancy>)s.createQuery("from Applicantvacancy where aid=:a").setParameter("a", aid).list();
			
			//System.out.println("gfgfg"+ls.toString());
			list=new ArrayList<Vacancy>();
			for(Applicantvacancy av:ls)
			{
			vaca=(Vacancy)s.createQuery("from Vacancy where vid=:a").setParameter("a", av.getVid()).uniqueResult();
			//System.out.println(vaca);
			list.add(vaca);
			}
			
			
			//list=(List<Vacancy2>)s.createQuery("from vacancy2 where vid = (  vid from applicantvacancy where aid=22)" ).list();
			
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
		if (list!=null)
		{return list;}
	else 
		return null;
	}
	
	
}
