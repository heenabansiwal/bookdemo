package bookaction;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import bookdio.BookBuytabledio;
import bookpojo.BookBuytablepojo;
import bookpojo.Booktablepojo;
import bookpojo.Customertablepojo;
public class BookBuytableaction extends ActionSupport implements ModelDriven<BookBuytablepojo>,ServletRequestAware

{

	private static final long serialVersionUID = 1L;
private BookBuytablepojo bbpojo = new BookBuytablepojo();
 private BookBuytabledio bbdio;
 private ServletRequest request;
 private List<BookBuytablepojo> Bbuylist = new ArrayList<BookBuytablepojo>();
 private Set<Booktablepojo> bparts=new HashSet<Booktablepojo>();
 private List<Booktablepojo> cartlist=new ArrayList<Booktablepojo>();

	 
	public String viewBookBuyData()
	{
		setBbuylist(bbdio.viewBookBuy());
		return "viewBookbuyData";
	}

 
 @SuppressWarnings("unchecked")
public String insertbookbuy2()
 {
		
		
    HttpSession session = ServletActionContext.getRequest().getSession(false);
	Customertablepojo cobj=(Customertablepojo)session.getAttribute("Customer_obj");
	double amt = (double)session.getAttribute("tamt");
	int pid=(int)session.getAttribute("pid");
	System.out.println("Customer id is "+cobj.getCustomerid());
	cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
	bparts= new HashSet<Booktablepojo>(cartlist);
	bbpojo.setCustomerid(cobj.getCustomerid());
	bbpojo.setOrderdate(new Date());
	bbpojo.setOrderamount(amt);
	bbpojo.setPaymentid(pid);
	bbpojo.setBooks(bparts);
	
	 bbdio.insertbookbuy(bbpojo);
	 session.setAttribute("onum", bbpojo.getOrderno());
	 return "insert";
	 
 }
 
 public String BookBuysearch2()
 {
	 String aid = request.getParameter("orderno");
	    int aid2 = Integer.parseInt(aid);
	    bbpojo=bbdio.BookBuysearch(aid2);
	 return "search";
 }
 
 
 
 
 public String searchOrderbycustomeridData()

 {
	 try
		{
		String o=request.getParameter("customerid");
		int onew=Integer.parseInt(o);
		Bbuylist=bbdio.searchOrderbycustomerid(onew);
		for(int i=0;i<Bbuylist.size();i++)
		{
			System.out.print("Book id is "+Bbuylist.get(i).getOrderno());
		}
		
		
				return "SuccessSearch";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "failsearch";
		}
	}

	 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 public String updatebookbuytable2()
	{
		
		bbdio.updatebookbuytable(bbpojo);
		return "update";
		
	}
public String deletebookbuytable2()
{
	
	bbpojo=bbdio.BookBuysearch(Integer.parseInt(request.getParameter("orderno")));
bbdio.deletebookbuytable(bbpojo);
return "delete";
}

 

	public BookBuytablepojo getBbpojo() {
	return bbpojo;
}

public void setBbpojo(BookBuytablepojo bbpojo) {
	this.bbpojo = bbpojo;
}

public BookBuytabledio getBbdio() {
	return bbdio;
}

public void setBbdio(BookBuytabledio bbdio) {
	this.bbdio = bbdio;
}

public ServletRequest getRequest() {
	return request;
}

public void setRequest(ServletRequest request) {
	this.request = request;
}

	@Override
	public BookBuytablepojo getModel() {
		
		return bbpojo;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		
        this.request=arg0;		
	}


	public List<BookBuytablepojo> getBbuylist() {
		return Bbuylist;
	}


	public void setBbuylist(List<BookBuytablepojo> bbuylist) {
		Bbuylist = bbuylist;
	}


	public Set<Booktablepojo> getBparts() {
		return bparts;
	}


	public void setBparts(Set<Booktablepojo> bparts) {
		this.bparts = bparts;
	}


	public List<Booktablepojo> getCartlist() {
		return cartlist;
	}


	public void setCartlist(List<Booktablepojo> cartlist) {
		this.cartlist = cartlist;
	}
	
}
