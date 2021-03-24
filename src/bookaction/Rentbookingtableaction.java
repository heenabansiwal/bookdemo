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

import bookpojo.Booktablepojo;
import bookpojo.Customertablepojo;
import bookpojo.Rentbookingtablepojo;
import bookdio.Rentbookingtabledio;
public class Rentbookingtableaction extends ActionSupport implements ModelDriven<Rentbookingtablepojo>,ServletRequestAware {

	private static final long serialVersionUID = 1L;
   private Rentbookingtablepojo rbpojo = new Rentbookingtablepojo();
   private Rentbookingtabledio rbdio;
	private ServletRequest request;
	 private int rentcount=0;
	   private double renttotal=0;
	   
	   private List<Booktablepojo> cartlist= new ArrayList<Booktablepojo>();
	   private Set<Booktablepojo> rparts=new HashSet<Booktablepojo>();
public List<Booktablepojo> getCartlist() {
		return cartlist;
	}

	public void setCartlist(List<Booktablepojo> cartlist) {
		this.cartlist = cartlist;
	}

public double getRenttotal() {
		return renttotal;
	}

	public void setRenttotal(double renttotal) {
		this.renttotal = renttotal;
	}

public int getRentcount() {
		return rentcount;
	}

	public void setRentcount(int rentcount) {
		this.rentcount = rentcount;
	}


private List<Rentbookingtablepojo> RentBklist = new ArrayList<Rentbookingtablepojo>();
	
	public String viewRentbookingData()
	{
		setRentBklist(rbdio.viewRentbooking());
		return "viewRentbookingData";
	}

	@SuppressWarnings("unchecked")
	public String calculateTotalRent()
	{
		HttpSession session = ServletActionContext.getRequest().getSession(false);
	 	cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
  	 double totalrent=cartlist.size()*100;
  	  
  	  System.out.print("hello");
	session.setAttribute("totalrentamt",totalrent);
		return "viewRentpagesuccess";
	}
	
	
   @SuppressWarnings("unchecked")
public String insertrentbookingdata2()
   {
	   
	    HttpSession session = ServletActionContext.getRequest().getSession(false);
		Customertablepojo cobj=(Customertablepojo)session.getAttribute("Customer_obj");
		double amt = (double)session.getAttribute("totalrentamt");
		int rid=(int)session.getAttribute("rid");
		System.out.println("Customer id is "+cobj.getCustomerid());
		cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
		rparts= new HashSet<Booktablepojo>(cartlist);
		rbpojo.setCustomerid(cobj.getCustomerid());
		rbpojo.setRentstartdate(new Date());
		rbpojo.setRentcost(amt);
		rbpojo.setRentpid(rid);
		
		
		rbpojo.setRentbooks(rparts);
	   
	   rbdio.insertrentbookingdata(rbpojo);
	   session.setAttribute("rentid_sess",rbpojo.getRentbookingid());
	   return"insert";
   }
   
   
	public String Rentbookingdatasearch2()
	{
		String aid = request.getParameter("rentbookingid");
	    int aid2 = Integer.parseInt(aid);
	    rbpojo = rbdio.Rentbookingdatasearch(aid2);
		return "search";

	}
	
	
	 public String updateRentBookingtable2()
	  	{
	  		
	  		rbdio.updateRentBookingtable(rbpojo);
	  		return "update";
	  		
	  	}
	  public String deleteRentBookingtable2()
	  {
	  	
	  	rbpojo=rbdio.Rentbookingdatasearch(Integer.parseInt(request.getParameter("rentbookingid")));
	  rbdio.deleteRentBookingtable(rbpojo);
	  return "delete";
	  }
	
	  
	public Rentbookingtablepojo getRbpojo() {
	return rbpojo;
}



public void setRbpojo(Rentbookingtablepojo rbpojo) {
	this.rbpojo = rbpojo;
}



public Rentbookingtabledio getRbdio() {
	return rbdio;
}



public void setRbdio(Rentbookingtabledio rbdio) {
	this.rbdio = rbdio;
}



public static long getSerialversionuid() {
	return serialVersionUID;
}



	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.setRequest(arg0);
		
	}

	@Override
	public Rentbookingtablepojo getModel() {
		// TODO Auto-generated method stub
		return rbpojo;
	}



	public ServletRequest getRequest() {
		return request;
	}



	public void setRequest(ServletRequest request) {
		this.request = request;
	}


	public List<Rentbookingtablepojo> getRentBklist() {
		return RentBklist;
	}


	public void setRentBklist(List<Rentbookingtablepojo> rentBklist) {
		RentBklist = rentBklist;
	}

	public Set<Booktablepojo> getRparts() {
		return rparts;
	}

	public void setRparts(Set<Booktablepojo> rparts) {
		this.rparts = rparts;
	}

}
