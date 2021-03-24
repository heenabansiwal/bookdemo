package bookdio;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import bookpojo.Customertablepojo;

public class Customertabledio extends HibernateDaoSupport {

	public void insertcustomerdata(Customertablepojo obj)
	
	{
		getHibernateTemplate().save(obj);
		
	}

	public void updatecustomertable(Customertablepojo obj)
	{
	getHibernateTemplate().saveOrUpdate(obj);	

	}
	public void deletecustomertable(Customertablepojo obj)
	{
	getHibernateTemplate().delete(obj);	
	}

	
	
	@SuppressWarnings("unchecked")
	public Customertablepojo customerdatasearch(int id)
    
    {
 	   List<Customertablepojo> ad = new ArrayList<Customertablepojo>();
 	  ad = getHibernateTemplate().find("from Customertablepojo where customerid  ='"+id+"'");
		return ad.get(0);
 	   
    }

	
	@SuppressWarnings("unchecked")
	public Customertablepojo customerEmailsearch(String email)
    
    {
 	   List<Customertablepojo> ad = new ArrayList<Customertablepojo>();
 	  ad = getHibernateTemplate().find("from Customertablepojo where email  ='"+email+"'");
		return ad.get(0);
 	   
    }

	
	@SuppressWarnings("unchecked")
	public List<Customertablepojo> viewCustomer()
	{
	List<Customertablepojo> ad = new ArrayList<Customertablepojo>();
	ad = getHibernateTemplate().find("from Customertablepojo");
		return ad;
	}
	
}
