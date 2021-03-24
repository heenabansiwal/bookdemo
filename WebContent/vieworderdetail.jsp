<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Your Order Details Are</h2>
	<p>
<table border="1" align="center">

<tr><th>Order No</th>
<th>Customer Id</th>
<th>Payment Id</th>
<th>Order Date</th>
<th>Delivery Address</th>
<th>Delivery Time</th>
<th>Phone No</th>
<th>Order Amount</th>
			</tr>
<tr><td>
<c:out value="${bbpojo.orderno}"></c:out></td><td>
<c:out value="${bbpojo.customerid}"></c:out></td><td>
<c:out value="${bbpojo.paymentid}"></c:out></td><td>
<c:out value="${bbpojo.orderdate}"></c:out></td><td>
<c:out value="${bbpojo.deliveryaddress}"></c:out></td><td>
<c:out value="${bbpojo.deliverytime}"></c:out></td><td>
<c:out value="${bbpojo.phno}"></c:out></td>
<c:out value="${bbpojo.orderamount}"></c:out></td>

<table border=1 width="100%">
		
		<h1> Prdoucts in Your Order</h1>
		
		
		
		
<s:iterator value="bbpojo.books" var="btpojo">
<tr>
<td>${btpojo.bookid}</td>
<td>${btpojo.bookisbn}</td>
<td>${btpojo.title}</td>
<td>${btpojo.category}</td>
<td>${btpojo.description}</td>
<td>${btpojo.publishername}</td>
<td>${btpojo.coverpage}</td>




</tr>
</s:iterator>

<tr><td colspan="4">Total Amount is : </td><td>${bbpojo.orderamount}</td></tr>
		
		
		
		</table>
		
		
		
		
		
		
	<jsp:include page="Footer1.jsp"></jsp:include>	
</body>
</html>