//to create singleton inst of Hibernate's annotation Config inst ---
//by reading hibernate.cfg.xml  & attach single inst of session factory
package utils;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HibernateUtils {

	private static SessionFactory factory;
	static {
		factory = new AnnotationConfiguration().configure()
				.buildSessionFactory();
	}
	public static SessionFactory getFactory()
	{
		return factory;
	}
	public static Session getSession()
	{
		return factory.openSession();
	}
}
