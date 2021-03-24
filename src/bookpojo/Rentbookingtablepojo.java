package bookpojo;

import java.util.Date;
import java.util.Set;
import bookpojo.Booktablepojo;

public class Rentbookingtablepojo {
	private int rentbookingid;
	private int customerid;
	private Date rentstartdate;
	private String rentedndate;
	private double rentcost;
	private String rentstatus;
	private int rentpid;
	private Set <Booktablepojo>rentbooks ;
	
	public Set<Booktablepojo> getRentbooks() {
		return rentbooks;
	}
	public void setRentbooks(Set<Booktablepojo> rentbooks) {
		this.rentbooks = rentbooks;
	}
	public int getRentbookingid() {
		return rentbookingid;
	}
	public void setRentbookingid(int rentbookingid) {
		this.rentbookingid = rentbookingid;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	
	public String getRentedndate() {
		return rentedndate;
	}
	public void setRentedndate(String rentedndate) {
		this.rentedndate = rentedndate;
	}
	public double getRentcost() {
		return rentcost;
	}
	public void setRentcost(double rentcost) {
		this.rentcost = rentcost;
	}
	public String getRentstatus() {
		return rentstatus;
	}
	public void setRentstatus(String rentstatus) {
		this.rentstatus = rentstatus;
	}
	public Date getRentstartdate() {
		return rentstartdate;
	}
	public void setRentstartdate(Date rentstartdate) {
		this.rentstartdate = rentstartdate;
	}
	public int getRentpid() {
		return rentpid;
	}
	public void setRentpid(int rentpid) {
		this.rentpid = rentpid;
	}

}