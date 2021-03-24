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
import bookpojo.Admintablepojo;
import bookdio.Admintabledio;
public class Admintableaction extends ActionSupport implements ModelDriven<Admintablepojo>,ServletRequestAware {

	
	private static final long serialVersionUID = 1L;


	private Admintablepojo apojo = new Admintablepojo();
	private Admintabledio adio;
	private ServletRequest request;
	
	public String adminLogin() {
		
         try {
			
			String Email=request.getParameter("admineamil");
			String Password=request.getParameter("adminpassword");
			
			apojo=adio.adminEmailsearch(Email);
			
			if (Email.equals(apojo.getAdmineamil()) && Password.equals(apojo.getAdminpassword())) {
				HttpSession session = ServletActionContext.getRequest().getSession(false);
	           session.setAttribute("Admin_name",apojo.getAdminname());
	            session.setAttribute("Admin_obj",apojo);
	            session.setAttribute("admin_id", apojo.getAdminid());
				return "adminloginsucess";
				 
			}else {
				return "adminloginfail";
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
		
		
		
	public String adminlogout()
	{
		HttpSession session = ServletActionContext.getRequest().getSession();
        session.removeAttribute("Admin_name");
        session.removeAttribute("Admin_obj");
        return "adminlogout";
	}

	
	private List<Admintablepojo> adminlist = new ArrayList<Admintablepojo>();
		
	public String viewAdminData()
	{
		adminlist = adio.viewAdmin();
		return "viewAdminData";
	}
	
	public String insertData2()
	{
		
		adio.insertdata(apojo);
		return"insert";
	}

public String AdminSearch2()

{
	 String aid = request.getParameter("adminid");
     int aid2 = Integer.parseInt(aid);
     apojo=adio.AdminSearch(aid2);	

          return"search";
}
	
	public String updatedata2()
	{
		
		adio.updatedata(apojo);
		return "update";
		
	}
public String deletedata2()
{
	
	apojo=adio.AdminSearch(Integer.parseInt(request.getParameter("adminid")));
 adio.deletedata(apojo);
return "delete";
}
	
	
	public List<Admintablepojo> getAdminlist() {
	return adminlist;
}

public void setAdminlist(List<Admintablepojo> adminlist) {
	this.adminlist = adminlist;
}

	public ServletRequest getRequest() {
		return request;
	}



	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	
	public Admintablepojo getApojo() {
		return apojo;
	}

	public void setApojo(Admintablepojo apojo) {
		this.apojo = apojo;
	}

	public Admintabledio getAdio() {
		return adio;
	}

	public void setAdio(Admintabledio adio) {
		this.adio = adio;
	}
	
	@Override
	public Admintablepojo getModel() {
		// TODO Auto-generated method stub
		return apojo;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
		
	}
}
