package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.Interviewer;
import pojo.Iresult;
import pojo.Ischedule;

import utils.HibernateUtils;

public class InterviewerDao 
{
		public ArrayList<Interviewer> getInterviewer (String eid)
		{
			ArrayList<Interviewer> list;
			Session s=null;
			Transaction tx=null;
			try
			{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			System.out.println("savinn in table");
			list=(ArrayList<Interviewer>)s.createQuery("from Interviewer where eid=:a").setParameter("a", eid).list();
			System.out.println("list "+list);
			return list;
			//Query q=s.createQuery("from vacancy2 where eid:=?");
			
			//s.save(table);
			//tx.commit();
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
		
		
		public Ischedule getSchedule (String isid)
		{
			Ischedule is=null;
			Session s=null;
			Transaction tx=null;
			try
			{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			System.out.println("savinn in table");
			is=(Ischedule)s.createQuery("from Ischedule where isid=:a").setParameter("a", isid).uniqueResult();
			System.out.println("is "+is);
			return is;
			//Query q=s.createQuery("from vacancy2 where eid:=?");
			
			//s.save(table);
			//tx.commit();
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
		
		
		public boolean updateInterTime(Ischedule is)
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
			
			s.update(is);
			System.out.println("after savinn in table");
			tx.commit();
			System.out.println("committed in table");
			
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
		
		public ArrayList<Iresult> getVacancyId()
		{
			ArrayList<Iresult> list;
			Session s=null;
			Transaction tx=null;
			try
			{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			System.out.println("savinn in table");
			list=(ArrayList<Iresult>)s.createQuery("from Iresult").list();
			System.out.println("list "+list);
			return list;
			
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
		
		public ArrayList<Iresult> getApplicantid(String vid)
		{
			ArrayList<Iresult> list;
			Session s=null;
			Transaction tx=null;
			try
			{
			System.out.println("before get session");
			s=HibernateUtils.getSession();
			System.out.println("before transaction");
			tx=s.beginTransaction();
			System.out.println("savinn in table");
			list=(ArrayList<Iresult>)s.createQuery("from Iresult where vid=:a").setParameter("a",vid).list();
			System.out.println("list "+list);
			return list;
			
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
		
		public void finalResult(String aid,String vid,String istatus)
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
			Iresult i=(Iresult) s.createQuery("from Iresult where aid=:a and vid=:b").setParameter("a", aid).setParameter("b", vid).uniqueResult();
			i.setIstatus(istatus);
			
			s.update(i);
			System.out.println("after savinn in table");
			tx.commit();
			System.out.println("committed in table");
			
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
		
}
