package bookdio;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import bookpojo.Rentcustomertablepojo;
public class Rentcustomertabledio extends HibernateDaoSupport {

	public void insertrentcustomerdata(Rentcustomertablepojo obj)
	
	
	{
		
		getHibernateTemplate().save(obj);
	}
	
	@SuppressWarnings("unchecked")
	public Rentcustomertablepojo Rentcustomerdatasearch(int id)

	{
		   List<Rentcustomertablepojo> ad = new ArrayList<Rentcustomertablepojo>();
		  ad = getHibernateTemplate().find("from Rentcustomertablepojo where rentcustid  ='"+id+"'");
		return ad.get(0);
		   
	}

public void updateRentCustomertable(Rentcustomertablepojo obj)
{
getHibernateTemplate().saveOrUpdate(obj);	

}
public void deleteRentCustomertable(Rentcustomertablepojo obj)
{
getHibernateTemplate().delete(obj);	
}

@SuppressWarnings("unchecked")
public List<Rentcustomertablepojo> viewRentcustomer()
{
List<Rentcustomertablepojo> ad = new ArrayList<Rentcustomertablepojo>();
ad = getHibernateTemplate().find("from Rentcustomertablepojo");
	return ad;
}

	
}
