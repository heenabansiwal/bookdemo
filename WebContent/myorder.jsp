<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<center><h2>Your Order List </h2></center>
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
			<c:forEach items="${Bbuylist}" var="bbpojo">
			<tr><td>
<c:out value="${bbpojo.orderno}"></c:out></td><td>
<c:out value="${bbpojo.customerid}"></c:out></td><td>
<c:out value="${bbpojo.paymentid}"></c:out></td><td>
<c:out value="${bbpojo.orderdate}"></c:out></td><td>
<c:out value="${bbpojo.deliveryaddress}"></c:out></td><td>
<c:out value="${bbpojo.deliverytime}"></c:out></td><td>
<c:out value="${bbpojo.phno}"></c:out></td>
<c:out value="${bbpojo.orderamount}"></c:out></td>
<td><a href="viewOrderAction?orderno=${bbpojo.orderno}">View Order Details</a></td>
</tr>			</c:forEach>
</table>
</body>
<jsp:include page="Footer1.jsp"></jsp:include>
</html>