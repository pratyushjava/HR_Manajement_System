package listeners;

import javax.servlet.ServletContextEvent;
import org.hibernate.SessionFactory;
import javax.servlet.ServletContextListener;

import utils.HibernateUtils;

/**
 * Application Lifecycle Listener implementation class HibContextListener
 *
 */
public class HibContextListener implements ServletContextListener {
  private SessionFactory sf;
    /**
     * Default constructor. 
     */
    public HibContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
       //singleton inst of SF
    	sf=HibernateUtils.getFactory();
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        if (sf != null)
        	sf.close();
    }
	
}
