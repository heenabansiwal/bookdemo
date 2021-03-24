package bookaction;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import bookpojo.Feedbacktablepojo;
import bookdio.Feedbacktabledio;
public class Feedbacktableaction extends ActionSupport implements ModelDriven<Feedbacktablepojo>,ServletRequestAware {


	
	private static final long serialVersionUID = 1L;
	private Feedbacktablepojo fpojo = new Feedbacktablepojo(); 
	private Feedbacktabledio fdio;
	private ServletRequest request;
	
private List<Feedbacktablepojo> Feedlist = new ArrayList<Feedbacktablepojo>();
	
	public String viewFeedbackData()
	{
		setFeedlist(fdio.viewFeedback());
		return "viewFeedbackData";
	}

	
	public String insertfeedbackdata2()
	{
		fdio.insertfeedbackdata(fpojo);
		return"insert";
		
	}
	
	public String Feedbackdatasearch2()
	{
		String aid = request.getParameter("feedid");
	    int aid2 = Integer.parseInt(aid);
	    fpojo = fdio.Feedbackdatasearch(aid2);
		return "search";
	}
	
	 public String updateFeedbacktable2()
	  	{
	  		
	  		fdio.updateFeedbacktable(fpojo);
	  		return "update";
	  		
	  	}
	  public String deleteFeedbacktable2()
	  {
	  	
	  	fpojo=fdio.Feedbackdatasearch(Integer.parseInt(request.getParameter("feedid")));
	  fdio.deleteFeedbacktable(fpojo);
	  return "delete";
	  }
	  

	
	
	public Feedbacktablepojo getFpojo() {
		return fpojo;
	}




	public void setFpojo(Feedbacktablepojo fpojo) {
		this.fpojo = fpojo;
	}




	public Feedbacktabledio getFdio() {
		return fdio;
	}




	public void setFdio(Feedbacktabledio fdio) {
		this.fdio = fdio;
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
	public Feedbacktablepojo getModel() {
		// TODO Auto-generated method stub
		return fpojo;
	}


	public List<Feedbacktablepojo> getFeedlist() {
		return Feedlist;
	}


	public void setFeedlist(List<Feedbacktablepojo> feedlist) {
		Feedlist = feedlist;
	}

}
