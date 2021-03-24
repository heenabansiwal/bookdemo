package bookdio;

import bookpojo.Admintablepojo;
import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class Admintabledio extends HibernateDaoSupport {
	
public void insertdata(Admintablepojo obj)

{
getHibernateTemplate().save(obj);	
}
@SuppressWarnings("unchecked")
public Admintablepojo AdminSearch(int id)
{
List<Admintablepojo> ad = new ArrayList<Admintablepojo>();
ad = getHibernateTemplate().find("from Admintablepojo where adminid='"+id+"'");
	return ad.get(0);
}


@SuppressWarnings("unchecked")
public Admintablepojo adminEmailsearch(String admineamil)

{
	   List<Admintablepojo> ad = new ArrayList<Admintablepojo>();
	  ad = getHibernateTemplate().find("from Admintablepojo where admineamil  ='"+admineamil+"'");
	return ad.get(0);
	   
}

public void updatedata(Admintablepojo obj)
{
getHibernateTemplate().saveOrUpdate(obj);	

 }
public void deletedata(Admintablepojo obj)
{
getHibernateTemplate().delete(obj);	
}

@SuppressWarnings("unchecked")
public List<Admintablepojo> viewAdmin()
{
List<Admintablepojo> ad = new ArrayList<Admintablepojo>();
ad = getHibernateTemplate().find("from Admintablepojo");
	return ad;
}

}
