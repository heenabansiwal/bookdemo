package bookpojo;
import java.util.Date;


public class Paymenttablepojo {
	private int paymentid;
	private int customerid;
	/* private String type; */
	private Date  paydate;
	private double payAmt;
	private String paymode;
	
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public double getPayAmt() {
		return payAmt;
	}
	public void setPayAmt(double payAmt) {
		this.payAmt = payAmt;
	}
	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	/*
	 * private int cardno; private int transactionno; private Date expirydate;
	 * private int cvvno; private String paymentStatus;
	 */
	
}