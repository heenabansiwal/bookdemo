package bookdio;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import bookpojo.Booktablepojo;


public class Booktabledio extends HibernateDaoSupport {

	public void insertbookdata(Booktablepojo obj)
	
	
	{
		getHibernateTemplate().save(obj);
		
		
	}
	@SuppressWarnings("unchecked")
	public Booktablepojo bookdatasearch(int id)
    
    {
 	   List<Booktablepojo> ad = new ArrayList<Booktablepojo>();
 	  ad = getHibernateTemplate().find("from Booktablepojo where bookid  ='"+id+"'");
		return ad.get(0);
 	   
    }
	
	@SuppressWarnings("unchecked")
	public Booktablepojo booknamesearch(String bname)
    
    {
 	   List<Booktablepojo> ad = new ArrayList<Booktablepojo>();
 	  ad = getHibernateTemplate().find("from Booktablepojo where title  ='"+bname+"'");
		return ad.get(0);
 	   
    }


	public void updatebooktable(Booktablepojo obj)
	{
	getHibernateTemplate().saveOrUpdate(obj);	

	}
	public void deletebooktable(Booktablepojo obj)
	{
	getHibernateTemplate().delete(obj);	
	}

	@SuppressWarnings("unchecked")
	public List<Booktablepojo> viewBook()
	{
	List<Booktablepojo> ad = new ArrayList<Booktablepojo>();
	ad = getHibernateTemplate().find("from Booktablepojo");
		return ad;
	}
}
