package bookaction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import bookpojo.Customertablepojo;
import bookdio.Customertabledio;
public class Customertableaction extends ActionSupport implements ModelDriven<Customertablepojo>,ServletRequestAware {

	
	private static final long serialVersionUID = 1L;
	private Customertablepojo ctpojo  = new Customertablepojo();
	private Customertabledio ctdio;
	private ServletRequest request;
	
	
	public String userLogin() {
		try {
			
			String Email=request.getParameter("email");
			String Password=request.getParameter("password");
			
			ctpojo=ctdio.customerEmailsearch(Email);
			
			
				
			if (Email.equals(ctpojo.getEmail()) && Password.equals(ctpojo.getPassword())) {
				HttpSession session = ServletActionContext.getRequest().getSession(false);
	           session.setAttribute("Customer_name",ctpojo.getName());
	            session.setAttribute("Customer_obj",ctpojo);
	            session.setAttribute("user_id", ctpojo.getCustomerid());
	            session.setAttribute("user_name", ctpojo.getName());
	          
				return "custloginsucess";
				 
			}else {
				return "custloginfail";
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	
	public String userlogout()
	{
		HttpSession session = ServletActionContext.getRequest().getSession();
        session.removeAttribute("Customer_name");
        session.removeAttribute("Customer_obj");
        return "userlogout";
	}

	
	
	private List<Customertablepojo> Custlist = new ArrayList<Customertablepojo>();
	
	public String viewCustomerData()
	{
		setCustlist(ctdio.viewCustomer());
		return "viewCustomerData";
	}

	
	
	public String insertcustomerdata2()
	{
		
		ctdio.insertcustomerdata(ctpojo);
		return"insert";
	}
	
	public String customerdatasearch2()
	{
		String aid = request.getParameter("customerid");
	    int aid2 = Integer.parseInt(aid);
		ctpojo = ctdio.customerdatasearch(aid2);
		return "search";
	}
	
	 public String updatecustomertable2()
	  	{
	  		
	  		ctdio.updatecustomertable(ctpojo);
	  		return "update";
	  		
	  	}
	  public String deletecustomertable2()
	  {
	  	
	  	ctpojo=ctdio.customerdatasearch(Integer.parseInt(request.getParameter("customerid")));
	  ctdio.deletecustomertable(ctpojo);
	  return "delete";
	  }
	  

	public Customertablepojo getCtpojo() {
		return ctpojo;
	}

	public void setCtpojo(Customertablepojo ctpojo) {
		this.ctpojo = ctpojo;
	}

	public Customertabledio getCtdio() {
		return ctdio;
	}

	public void setCtdio(Customertabledio ctdio) {
		this.ctdio = ctdio;
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
	public Customertablepojo getModel() {
		// TODO Auto-generated method stub
		return ctpojo;
	}

	public ServletRequest getRequest() {
		return request;
	}

	public void setRequest(ServletRequest request) {
		this.request = request;
	}



	public List<Customertablepojo> getCustlist() {
		return Custlist;
	}



	public void setCustlist(List<Customertablepojo> custlist) {
		Custlist = custlist;
	}

}
