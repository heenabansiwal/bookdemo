<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Book Buy</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search Book Buy</h2>
<p>
<c:if test="${bbpojo eq null}">
<s:form method="post" action="searchbookbuy">
<s:textfield name ="orderno" Label="Enter Order No"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${bbpojo ne null}">
<h1>Book Buy data Found</h1>
<table border="1" align="center">

<tr><th>Order No</th>
<th>Customer Id</th>
<th>Order Date</th>
<th>Delivery Address</th>
<th>Delivery Time</th>
<th>Phone No</th>
<th>Mode of Payment</th>
			</tr><tr><td>
<c:out value="${bbpojo.orderno}"></c:out></td><td>
<c:out value="${bbpojo.customerid}"></c:out></td><td>
<c:out value="${bbpojo.orderdate}"></c:out></td><td>
<c:out value="${bbpojo.deliveryaddress}"></c:out></td><td>
<c:out value="${bbpojo.deliverytime}"></c:out></td><td>
<c:out value="${bbpojo.phno}"></c:out></td><td>
<c:out value="${bbpojo.modeofpayment}"></c:out></td></tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>