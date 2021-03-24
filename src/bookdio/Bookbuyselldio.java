package bookdio;


import bookpojo.Bookbuysellpojo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class Bookbuyselldio extends HibernateDaoSupport {
	public void insertdatabookbuysell(Bookbuysellpojo obj)
	
	{
		
		getHibernateTemplate().save(obj);
	}

       
	@SuppressWarnings("unchecked")
	public Bookbuysellpojo Bookbuysellsearch(int id)
       
       {
    	   List<Bookbuysellpojo> ad = new ArrayList<Bookbuysellpojo>();
    	  ad = getHibernateTemplate().find("from Bookbuysellpojo where bookbuyid  ='"+id+"'");
		return ad.get(0);
    	   
       }
	
	public void updatebookbuysell(Bookbuysellpojo obj)
	{
	getHibernateTemplate().saveOrUpdate(obj);	

	}
	public void deletebookbuysell(Bookbuysellpojo obj)
	{
	getHibernateTemplate().delete(obj);	
	}


	@SuppressWarnings("unchecked")
	public List<Bookbuysellpojo> viewBookBuySell()
	{
	List<Bookbuysellpojo> ad = new ArrayList<Bookbuysellpojo>();
	ad = getHibernateTemplate().find("from Bookbuysellpojo");
		return ad;
	}

}
