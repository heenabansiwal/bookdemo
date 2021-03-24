package bookdio;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import bookpojo.Rentbookingtablepojo;
public class Rentbookingtabledio extends HibernateDaoSupport {
	
	public void insertrentbookingdata(Rentbookingtablepojo obj)
	
	{
		getHibernateTemplate().save(obj);
		
	}
	@SuppressWarnings("unchecked")
	public Rentbookingtablepojo Rentbookingdatasearch(int id)

	{
		   List<Rentbookingtablepojo> ad = new ArrayList<Rentbookingtablepojo>();
		  ad = getHibernateTemplate().find("from Rentbookingtablepojo where rentbookingid  ='"+id+"'");
		return ad.get(0);
		   
	}


public void updateRentBookingtable(Rentbookingtablepojo obj)
{
getHibernateTemplate().saveOrUpdate(obj);	

}
public void deleteRentBookingtable(Rentbookingtablepojo obj)
{
getHibernateTemplate().delete(obj);	
}

@SuppressWarnings("unchecked")
public List<Rentbookingtablepojo> viewRentbooking()
{
List<Rentbookingtablepojo> ad = new ArrayList<Rentbookingtablepojo>();
ad = getHibernateTemplate().find("from Rentbookingtablepojo");
	return ad;
}

}
