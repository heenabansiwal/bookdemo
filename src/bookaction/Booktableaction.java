package bookaction;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


import bookdio.Booktabledio;
import bookpojo.Booktablepojo;


public class Booktableaction extends ActionSupport implements ModelDriven<Booktablepojo>, ServletRequestAware {

	
   private static final long serialVersionUID = 1L;
   private Booktablepojo btpojo = new Booktablepojo();
   private Booktabledio btdio;
   private ServletRequest request;
   private File fileUpload;
   private String fileUploadFileName;
   private int count=0;
   private double total=0;

   public double getTotal() {
	return total;
}

public void setTotal(double total) {
	this.total = total;
}




private List<Booktablepojo> cartlist= new ArrayList<Booktablepojo>();
	
   public List<Booktablepojo> getCartlist() {
	return cartlist;
}

public void setCartlist(List<Booktablepojo> cartlist) {
	this.cartlist = cartlist;
}

public String insertbookdata2()
   {
	   try
   {
	   byte[] imageData = new byte[(int)fileUpload.length()];
	   FileInputStream fileInputStream = new FileInputStream(fileUpload);
	   fileInputStream.read(imageData);
	   btpojo.setData(imageData);
	   fileInputStream.close();
	   
   }
	   catch(Exception e) {
		   
		   e.printStackTrace();
	   }
	   btdio.insertbookdata(btpojo);
	   return "insert";
   }
	
   
   
   public int getCount() {
	return count;
}

public void setCount(int count) {
	this.count = count;
}




private List<Booktablepojo> Bklist = new ArrayList<Booktablepojo>();
	
	public String viewBookData()
	{
		setBklist(btdio.viewBook());
		return "viewBookData";
	}

   public String viewAllBookData()
   {
	   Bklist = btdio.viewBook();
	   
	   for(int i=0;i<Bklist.size();i++)
	   {
		   Bklist.get(i).setImgstr(Base64.getEncoder().encodeToString(Bklist.get(i).getData()));
	   }
	   return "viewAllBookSuccess";
   }
   
   public String bookdatasearch2()
  
	{  
	  
		String aid = request.getParameter("bookid");
	    int aid2 = Integer.parseInt(aid);
		btpojo = btdio.bookdatasearch(aid2);
		btpojo.setImgstr(Base64.getEncoder().encodeToString(btpojo.getData()));
		return "search";
	}
   
   
   
   public String updatebooktable2()
  	{
  		
  		btdio.updatebooktable(btpojo);
  		return "update";
  		
  	}
  public String deletebooktable2()
  {
  	
  	btpojo=btdio.bookdatasearch(Integer.parseInt(request.getParameter("bookid")));
  btdio.deletebooktable(btpojo);
  return "delete";
  }


  
	/* ADD TO CART CODING START */
  
  @SuppressWarnings("unchecked")
public String AddtoCart()
  {
  	//List<Registration> alist= new ArrayList<Registration>();
  	try
  	{
  	String Bookid=request.getParameter("bookid");
  	int bookidd=Integer.parseInt(Bookid);
  	
  	btpojo=btdio.bookdatasearch(bookidd);
  	btpojo.setImgstr(Base64.getEncoder().encodeToString(btpojo.getData()));
  	
  	HttpSession session = ServletActionContext.getRequest().getSession(false);
  	
  	
  		if(null==session.getAttribute("cart"))
  	
  	 {
  			cartlist.add(btpojo);
  		 session.setAttribute("cart",cartlist);	 
  	 }
  	 else{
  		 cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
  		 cartlist.add(btpojo);
  		 session.setAttribute("cart",cartlist);	
  	 }
  	}
  	catch(Exception e)
  	{
  		e.printStackTrace();
  	}


  	return "dataAddedSuccess";

  }



  @SuppressWarnings("unchecked")
public String ViewCart()
  {
  	
  	HttpSession session = ServletActionContext.getRequest().getSession(false);
  	cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
  	for(int i=0; i<cartlist.size();i++)
  	{
   		total=total+cartlist.get(i).getCost();
  	}
  	session.setAttribute("tamt",total);
  	return "ViewAllcartSuccess";
  }


  @SuppressWarnings("unchecked")
public String deleteCart()
  {
  	HttpSession session = ServletActionContext.getRequest().getSession(false);
  	String Bookid=request.getParameter("bookid");
  	int bookidd=Integer.parseInt(Bookid);
  	btpojo=btdio.bookdatasearch(bookidd);
  	
  	cartlist=(ArrayList<Booktablepojo>)session.getAttribute("cart");
  	
  	for(int i=0;i<cartlist.size();i++)
  	{
  		if(cartlist.get(i).getBookid()==btpojo.getBookid())
  		{
  			cartlist.remove(i);
  			break;
  		}
  	}
  	
  	
  	session.setAttribute("cart",cartlist);	
  	return "dataDeletedSuccessfully";
  }

  
  /* ADD TO CART CODING ENDS */
  
  
  public String booknamesearch2()
  {
	String bookname = request.getParameter("title");
	btpojo=btdio.booknamesearch(bookname);
	btpojo.setImgstr(Base64.getEncoder().encodeToString(btpojo.getData()));
	return "searchbname";
  }
  
	public Booktablepojo getBtpojo() {
		return btpojo;
	}


	public void setBtpojo(Booktablepojo btpojo) {
		this.btpojo = btpojo;
	}

	public Booktabledio getBtdio() {
		return btdio;
	}

	public void setBtdio(Booktabledio btdio) {
		this.btdio = btdio;
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
	public Booktablepojo getModel() {
		// TODO Auto-generated method stub
		return btpojo;
	}


	public File getFileUpload() {
		return fileUpload;
	}


	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}


	public String getFileUploadFileName() {
		return fileUploadFileName;
	}


	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}



	public List<Booktablepojo> getBklist() {
		return Bklist;
	}



	public void setBklist(List<Booktablepojo> bklist) {
		Bklist = bklist;
	}

}
