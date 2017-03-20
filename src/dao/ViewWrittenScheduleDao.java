package dao;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


import pojo.Vacancy;
import pojo.Wschedule;


import utils.HibernateUtils;

public class ViewWrittenScheduleDao
{
	public List<Wschedule> getAllWrittenSchedule(String eid)
	{
		Session s=null;
		Transaction tx=null;
		List<Wschedule> q=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		 q=(List<Wschedule>)s.createQuery("from Wschedule where eid=:a").setParameter("a", eid).list();
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
	
	public void deleteWrittenSchedule(String wscid)
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
		String hql="from Wschedule where wscid=:a";
		Wschedule q=(Wschedule)s.createQuery(hql).setParameter("a",wscid).uniqueResult();
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
	
	public void update(Wschedule table,String eid)//,String vid)
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);table.setEid(eid);System.out.println(eid);
		//table.setVid(vid);table.setVid(vid);System.out.println(vid);
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
	
	public Wschedule viewWrittenScheduleDetail(String wscid)
	{
		Session s=null;
		Transaction tx=null;
		Wschedule v=null;
		try
		{
			s=HibernateUtils.getSession();
			tx=s.beginTransaction();
			v=(Wschedule)s.createQuery("from Wschedule where wscid=:a").setParameter("a", wscid).uniqueResult();
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
	
	public List<Wschedule> getAllVacancies(String wscid)
	{
		Session s=null;
		Transaction tx=null;
		List<Wschedule> q=null;
		try
		{
		System.out.println("before get session");
		s=HibernateUtils.getSession();
		System.out.println("before transaction");
		tx=s.beginTransaction();
		System.out.println("savinn in table");
		
		 q=(List<Wschedule>)s.createQuery("from Wschedule where wscid=:a").setParameter("a", wscid).list();
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
	public void create(Wschedule table,String eid) throws Exception
	{
		Session s=null;
		Transaction tx=null;
		table.setEid(eid);
		String vid=table.getVid();
		Vacancy vaca=null;
		try
		{
		
									System.out.println("before get session");
		s=HibernateUtils.getSession();
									System.out.println("before transaction");
		tx=s.beginTransaction();
									System.out.println("savinn in table");
		s.save(table);
		vaca=(Vacancy)s.createQuery("from Vacancy where vid=:a").setParameter("a", vid).uniqueResult();
		vaca.setScheduledstatus("written scheduled");
		s.update(vaca);
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
	
	public ArrayList<Vacancy> selectVid(String eid)
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
		
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and scheduledstatus=:b and vstatus=:c").setParameter("a", eid).setParameter("b", "not scheduled").setParameter("c", "open").list();
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
	
	
	
	public ArrayList<Vacancy> selectVidForShortList(String eid)
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
		
		 al=(ArrayList<Vacancy>)s.createQuery("from Vacancy where eid=:a and scheduledstatus=:b and vstatus=:c").setParameter("a", eid).setParameter("b", "written scheduled").setParameter("c", "open").list();
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
}
