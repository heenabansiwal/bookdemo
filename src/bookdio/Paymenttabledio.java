package bookdio;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bookpojo.Paymenttablepojo;
public class Paymenttabledio extends HibernateDaoSupport{

public void insertpaymentdata(Paymenttablepojo obj)
{
	
getHibernateTemplate().save(obj);
}

@SuppressWarnings("unchecked")
public Paymenttablepojo Paymentdatasearch(int id)

{
	   List<Paymenttablepojo> ad = new ArrayList<Paymenttablepojo>();
	  ad = getHibernateTemplate().find("from Paymenttablepojo where paymentid  ='"+id+"'");
	return ad.get(0);
	   
}

public void updatePaymenttable(Paymenttablepojo obj)
{
getHibernateTemplate().saveOrUpdate(obj);	

}
public void deletePaymenttable(Paymenttablepojo obj)
{
getHibernateTemplate().delete(obj);	
}
@SuppressWarnings("unchecked")
public List<Paymenttablepojo> viewPayment()
{
List<Paymenttablepojo> ad = new ArrayList<Paymenttablepojo>();
ad = getHibernateTemplate().find("from Paymenttablepojo");
	return ad;
}

}
