package bookaction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


import bookpojo.Bookbuysellpojo;
import bookdio.Bookbuyselldio;

public class Bookbuysellaction extends ActionSupport implements ModelDriven<Bookbuysellpojo>,ServletRequestAware {

	private static final long serialVersionUID = 1L;
	
	private Bookbuysellpojo bpojo = new Bookbuysellpojo();
	private Bookbuyselldio bdio;
	private ServletRequest request;
	private List<Bookbuysellpojo> Bbuysellist = new ArrayList<Bookbuysellpojo>();

	public String viewBookBuySellData()
	{
		setBbuysellist(bdio.viewBookBuySell());
		return "viewBookbuysellData";
	}

	public String insertbookbuysell()	 
	{
		bdio.insertdatabookbuysell(bpojo);
		return"insert";
	}
	
    
	public String searchbookbuysell2()
	{
		String aid = request.getParameter("bookbuyid");
	    int aid2 = Integer.parseInt(aid);
	    bpojo=bdio.Bookbuysellsearch(aid2);
	     return"search";
	}
	
	public String updatebookbuysell2()
	{
		
		bdio.updatebookbuysell(bpojo);
		return "update";
		
	}
public String deletebookbuysell2()
{
	
	bpojo=bdio.Bookbuysellsearch(Integer.parseInt(request.getParameter("bookbuyid")));
 bdio.deletebookbuysell(bpojo);
return "delete";
}
	
	
	public ServletRequest getRequest() {
		return request;
	}



	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	
	public Bookbuysellpojo getBpojo() {
		return bpojo;
	}

	public void setBpojo(Bookbuysellpojo bpojo) {
		this.bpojo = bpojo;
	}

	public Bookbuyselldio getBdio() {
		return bdio;
	}

	public void setBdio(Bookbuyselldio bdio) {
		this.bdio = bdio;
	}

	@Override
	public Bookbuysellpojo getModel() {
		// TODO Auto-generated method stub
		return bpojo;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}

	public List<Bookbuysellpojo> getBbuysellist() {
		return Bbuysellist;
	}

	public void setBbuysellist(List<Bookbuysellpojo> bbuysellist) {
		Bbuysellist = bbuysellist;
	}
	
	

}
