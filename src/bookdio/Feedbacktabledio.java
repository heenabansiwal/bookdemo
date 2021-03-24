package bookdio;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import bookpojo.Feedbacktablepojo;

public class Feedbacktabledio extends HibernateDaoSupport {
	
	public void insertfeedbackdata(Feedbacktablepojo obj)
	{
		getHibernateTemplate().save(obj);
		
	}

	@SuppressWarnings("unchecked")
	public Feedbacktablepojo Feedbackdatasearch(int id)
    
    {
 	   List<Feedbacktablepojo> ad = new ArrayList<Feedbacktablepojo>();
 	  ad = getHibernateTemplate().find("from Feedbacktablepojo where feedid  ='"+id+"'");
		return ad.get(0);
 	   
    }

	
	public void updateFeedbacktable(Feedbacktablepojo obj)
	{
	getHibernateTemplate().saveOrUpdate(obj);	

	}
	public void deleteFeedbacktable(Feedbacktablepojo obj)
	{
	getHibernateTemplate().delete(obj);	
	}

	@SuppressWarnings("unchecked")
	public List<Feedbacktablepojo> viewFeedback()
	{
	List<Feedbacktablepojo> ad = new ArrayList<Feedbacktablepojo>();
	ad = getHibernateTemplate().find("from Feedbacktablepojo");
		return ad;
	}

}
