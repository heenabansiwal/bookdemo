package bookpojo;
import java.util.Date;
import java.util.Set;
import bookpojo.Booktablepojo;
public class BookBuytablepojo {
	
	private int orderno;
	private int customerid;
	private int paymentid;
	private Date orderdate;
	private String deliveryaddress;
	private String deliverytime;
	private long phno;
	private double orderamount;
	private Set <Booktablepojo>books ;
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getDeliveryaddress() {
		return deliveryaddress;
	}
	public void setDeliveryaddress(String deliveryaddress) {
		this.deliveryaddress = deliveryaddress;
	}
	public String getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public double getOrderamount() {
		return orderamount;
	}
	public void setOrderamount(double orderamount) {
		this.orderamount = orderamount;
	}
	public Set<Booktablepojo> getBooks() {
		return books;
	}
	public void setBooks(Set<Booktablepojo> books) {
		this.books = books;
	}
	
	

}