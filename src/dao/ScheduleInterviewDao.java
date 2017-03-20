package dao;
import java.util.ArrayList;
import java.util.Iterator;


import org.hibernate.*;

import pojo.*;
import utils.HibernateUtils;
import pojoapplicant.*;

public class ScheduleInterviewDao 
{
	
	static int count = 0;
	static ScheduleInterviewDao ref =null;
	
	public ScheduleInterviewDao()
	{
		super();
		System.out.println("In Schedule Dao Constructor");
		
	}
	
	public static ScheduleInterviewDao getDao()
	{
		if(count==0)
		{
			ref = new ScheduleInterviewDao();
			count++;
			return ref;
		}
		else
		
			return ref;		
	}
	
	public ArrayList<Vacancy> selectVid(String eid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Vacancy> al=null;
		String vstatus="open";
		String scheduledstatus="written scheduled";
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and vstatus=:b and scheduledstatus=:c").setParameter("a", eid).setParameter("b", vstatus).setParameter("c", scheduledstatus).list();
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
	
	public ArrayList<Vacancy> selectVid1(String eid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Vacancy> al=null;
		String vstatus="open";
		String scheduledstatus="interview scheduled";
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and vstatus=:b and scheduledstatus=:c").setParameter("a", eid).setParameter("b", vstatus).setParameter("c", scheduledstatus).list();
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
	
	public void setInterview(Ischedule table,String eid,String vid)
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		Vacancy v;
		
		try
		{
		System.out.println("before get session1");
		s=HibernateUtils.getSession();
		System.out.println("before transaction1");
		tx=s.beginTransaction();
		s.save(table);
		v=(Vacancy) s.createQuery("from Vacancy where vid=:a").setParameter("a",vid).uniqueResult();
		v.setScheduledstatus("interview scheduled");
		s.update(v);
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
		
	}
	
	public ArrayList<Employee> selectEid()
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Employee> al=null;
		String eid="employee";
		String estatus="not assign";
		try
		{
		System.out.println("before get session select eid");
		s=HibernateUtils.getSession();
		System.out.println("before transaction select eid");
		tx=s.beginTransaction();
		
		 al=(ArrayList<Employee>)s.createQuery("from Employee where etype=:a").setParameter("a",eid).list();
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
	
	
	
	public ArrayList<Ischedule> viewScheduledInterview(String eid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Ischedule> l1=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		 l1=(ArrayList<Ischedule>)s.createQuery("from Ischedule where eid=:a").setParameter("a", eid).list();
		 System.out.println("array list "+l1);
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
		return l1;
	}
	
	public Ischedule viewInterviewDetail(String isid)
	{
		Ischedule a1=null;
		Session s=null;
		Transaction tx=null;
		Ischedule i=null;
		System.out.println("hello");
		try
		{
			s=HibernateUtils.getSession();
			tx=s.beginTransaction();
			i=(Ischedule)s.createQuery("from Ischedule where isid=:a").setParameter("a", isid).uniqueResult();
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
		return i;
	}
	
	public void updateInterview(Ischedule table,String eid)
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		
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
	
	public void deleteInterview(String isid)
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
		String hql="from Ischedule where isid=:a";
		Ischedule q=(Ischedule)s.createQuery(hql).setParameter("a",isid).uniqueResult();
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
	
	public boolean assignInterviewer(Interviewer table,String eid,String vid)
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		Ischedule isch;
		Employee emp;
		Interviewer inter=null;
		try
		{
		System.out.println("before get session1");
		s=HibernateUtils.getSession();
		System.out.println("before transaction1");
		tx=s.beginTransaction();
		isch=(Ischedule) s.createQuery("from Ischedule where vacancy=:a").setParameter("a",vid).uniqueResult();
		System.out.println("isch "+isch);
		String isid=isch.getIsid();
		emp=(Employee) s.createQuery("from Employee where eid=:a").setParameter("a",eid).uniqueResult();
		 inter=(Interviewer)s.createQuery("from Interviewer where eid=:a and isid=:b").setParameter("a", eid).setParameter("b", isch.getIsid()).uniqueResult();
		if(inter!=null)
		{return false;}
		String iefname=emp.getEfname();
		String iemname=emp.getEmname();
		String ielname=emp.getElname();
		
		table.setIefname(iefname);
		table.setIemname(iemname);
		table.setIelname(ielname);
		table.setIsid(isid);
		
		s.save(table);
		emp.setEstatus("assign");
		
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
		return true;
	}
	
	public ArrayList<Vacancy> selectInterviewVid(String eid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Vacancy> al=null;
		String vstatus="open";
		String scheduledstatus="interview scheduled";
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and vstatus=:b and scheduledstatus=:c").setParameter("a", eid).setParameter("b", vstatus).setParameter("c", scheduledstatus).list();
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
	
	public ArrayList<Wresult> getWresult(String vid)
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Wresult> l1=null;

		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		 l1=(ArrayList<Wresult>)s.createQuery("from Wresult where vid=:a and wstatus=:b").setParameter("a", vid).setParameter("b", "nselected").list();
		 
		 System.out.println("array list "+l1);
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
		return l1;
	}
	
	public void changestatus(Wresult w)
	{
		Session s=null;
		Transaction tx=null;
		
		w.setWstatus("selected");
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("updating in table");
		s.update(w);
		 System.out.println("updated in table");
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
	
	public boolean SaveShortilistInterview(Wresult w)
	{
		Session s=null;
		Transaction tx=null;
		Applicantvacancy ap=null;
		Iresult i=new Iresult();
		String vid=w.getVid();
		String afname=w.getAfname();
		String amname=w.getAmname();
		String alname=w.getAlname();
		String avid=w.getAvid();
		i.setAfname(afname);
		i.setAlname(alname);
		i.setAmname(amname);
		i.setVid(vid);
		i.setIstatus("niselected");
		w.setWstatus("selected");
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("saving in table");
		ap=(Applicantvacancy) s.createQuery("from Applicantvacancy where avid=:a").setParameter("a", avid).uniqueResult();
		String aid=ap.getAid();
		i.setAid(aid);
		Iresult abc=(Iresult)s.createQuery("from Iresult where aid=:a and vid=:b").setParameter("a", aid).setParameter("b", vid).uniqueResult();
		if(abc!=null)
		{return false;}
		s.save(i);
		System.out.println("saving in table");
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
		return true;
	}
	
	public ArrayList<Iresult> viewshortlistinterview()
	{
		Session s=null;
		Transaction tx=null;
		ArrayList<Iresult> l1=null;
		Wresult wr=new Wresult();
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		
		 l1=(ArrayList<Iresult>)s.createQuery("from Iresult where istatus=:a").setParameter("a","niselected").list();
		 
		 System.out.println("array list "+l1);
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
		return l1;
	}

}
