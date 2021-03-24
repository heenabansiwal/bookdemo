package bookdio;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import bookpojo.BookBuytablepojo;
public class BookBuytabledio extends HibernateDaoSupport{

	
	public void insertbookbuy(BookBuytablepojo obj)
	
	{
		
		getHibernateTemplate().save(obj);
	}

@SuppressWarnings("unchecked")
public BookBuytablepojo BookBuysearch(int id)
{
	List<BookBuytablepojo> ad = new ArrayList<BookBuytablepojo>();
ad=getHibernateTemplate().find("from BookBuytablepojo where orderno = '"+id+"'");
return ad.get(0);
}

@SuppressWarnings("unchecked")
public List<BookBuytablepojo> searchOrderbycustomerid(int cid)
{
	List<BookBuytablepojo> o = new ArrayList<BookBuytablepojo>();
	o=getHibernateTemplate().find("from BookBuytablepojo where customerid = '"+cid+"'");
	return o;

}

public void updatebookbuytable(BookBuytablepojo obj)
{
getHibernateTemplate().saveOrUpdate(obj);	

}
public void deletebookbuytable(BookBuytablepojo obj)
{
getHibernateTemplate().delete(obj);	
}

@SuppressWarnings("unchecked")
public List<BookBuytablepojo> viewBookBuy()
{
List<BookBuytablepojo> ad = new ArrayList<BookBuytablepojo>();
ad = getHibernateTemplate().find("from BookBuytablepojo");
	return ad;
}

}
