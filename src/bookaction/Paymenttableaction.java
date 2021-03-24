package bookaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import bookpojo.Customertablepojo;
import bookpojo.Paymenttablepojo;
import bookdio.Paymenttabledio;
public class Paymenttableaction extends ActionSupport implements ModelDriven<Paymenttablepojo>,ServletRequestAware {

	
	private static final long serialVersionUID = 1L;

	private Paymenttablepojo Ppojo = new Paymenttablepojo();
    private Paymenttabledio pdio;
	private ServletRequest request;
	private List<Paymenttablepojo> Paylist = new ArrayList<Paymenttablepojo>();
	
	public String viewPaymentData()
	{
		setPaylist(pdio.viewPayment());
		return "viewPaymentData";
	}

	
	
	
    public ServletRequest getRequest() {
		return request;
	}

	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	public String insertpaymentdata2()
    {
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		double amt = (double)session.getAttribute("tamt");
		Customertablepojo cobj=(Customertablepojo)session.getAttribute("Customer_obj");
		Ppojo.setPayAmt(amt);
		//Ppojo.setPaydate("1-1-10");
		Ppojo.setPaydate(new Date());
		System.out.print(cobj.getCustomerid());
	    Ppojo.setCustomerid(cobj.getCustomerid());
    	pdio.insertpaymentdata(Ppojo);
    	session.setAttribute("pid", Ppojo.getPaymentid());
    	return"insert";
    	
    }
	
	public String insertrentpaymentdata2()
    {
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		double amt = (double)session.getAttribute("totalrentamt");
		Customertablepojo cobj=(Customertablepojo)session.getAttribute("Customer_obj");
		Ppojo.setPayAmt(amt);
		//Ppojo.setPaydate("1-1-10");
		Ppojo.setPaydate(new Date());
		
	    Ppojo.setCustomerid(cobj.getCustomerid());
    	pdio.insertpaymentdata(Ppojo);
    	session.setAttribute("rid", Ppojo.getPaymentid());
    	return"insert";
    	
    }
	
    public String Paymentdatasearch2()
	{
		String aid = request.getParameter("paymentid");
	    int aid2 = Integer.parseInt(aid);
	    Ppojo = pdio.Paymentdatasearch(aid2);
		return "search";
	}
	    

    public String updatePaymenttable2()
  	{
  		
  		pdio.updatePaymenttable(Ppojo);
  		return "update";
  		
  	}
  public String deletePaymenttable2()
  {
  	
  	Ppojo=pdio.Paymentdatasearch(Integer.parseInt(request.getParameter("paymentid")));
  pdio.deletePaymenttable(Ppojo);
  return "delete";
  }

    
    
	public Paymenttablepojo getPpojo() {
		return Ppojo;
	}




	public void setPpojo(Paymenttablepojo ppojo) {
		Ppojo = ppojo;
	}




	public Paymenttabledio getPdio() {
		return pdio;
	}




	public void setPdio(Paymenttabledio pdio) {
		this.pdio = pdio;
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
	public Paymenttablepojo getModel() {
		// TODO Auto-generated method stub
		return Ppojo;
	}




	public List<Paymenttablepojo> getPaylist() {
		return Paylist;
	}




	public void setPaylist(List<Paymenttablepojo> paylist) {
		Paylist = paylist;
	}

}
