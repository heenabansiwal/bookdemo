package bookaction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import bookpojo.Rentcustomertablepojo;
import bookdio.Rentcustomertabledio;

public class Rentcustomertableaction extends ActionSupport implements ModelDriven<Rentcustomertablepojo>,ServletRequestAware {
 

	private static final long serialVersionUID = 1L;
	private  Rentcustomertablepojo rcpojo = new Rentcustomertablepojo(); 
    private Rentcustomertabledio rcdio;
	private ServletRequest request;
	private List<Rentcustomertablepojo> rentctlist = new ArrayList<Rentcustomertablepojo>();
	
	public String viewRentcustomerData()
	{
		setRentctlist(rcdio.viewRentcustomer());
		return "viewRentcustomerData";
	}

	
	public String insertrentcustomerdata2()
	{
		rcdio.insertrentcustomerdata(rcpojo);
		return"insert";
	}
	
	public String Rentcustomerdatasearch2()
	{
		String aid = request.getParameter("rentcustid");
	    int aid2 = Integer.parseInt(aid);
	    rcpojo = rcdio.Rentcustomerdatasearch(aid2);
		return "search";

	
	}
	
	
	 public String updateRentCustomertable2()
	  	{
	  		
	  		rcdio.updateRentCustomertable(rcpojo);
	  		return "update";
	  		
	  	}
	  public String deleteRentCustomertable2()
	  {
	  	
	  	rcpojo=rcdio.Rentcustomerdatasearch(Integer.parseInt(request.getParameter("rentcustid")));
	  rcdio.deleteRentCustomertable(rcpojo);
	  return "delete";
	  }
	
	
	public Rentcustomertablepojo getRcpojo() {
		return rcpojo;
	}





	public void setRcpojo(Rentcustomertablepojo rcpojo) {
		this.rcpojo = rcpojo;
	}





	public Rentcustomertabledio getRcdio() {
		return rcdio;
	}





	public void setRcdio(Rentcustomertabledio rcdio) {
		this.rcdio = rcdio;
	}





	public ServletRequest getRequest() {
		return request;
	}





	public void setRequest(ServletRequest request) {
		this.request = request;
	}





	public static long getSerialversionuid() {
		return serialVersionUID;
	}





	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
	this.request=arg0;	
	}
	@Override
	public Rentcustomertablepojo getModel() {
		// TODO Auto-generated method stub
		return rcpojo;
	}


	public List<Rentcustomertablepojo> getRentctlist() {
		return rentctlist;
	}


	public void setRentctlist(List<Rentcustomertablepojo> rentctlist) {
		this.rentctlist = rentctlist;
	}
}
