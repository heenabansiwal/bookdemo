<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Rent Booking </title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>
</head>
<body>
<h2>Search Rent Booking</h2>
<p>
<c:if test="${rbpojo eq null}">
<s:form method="post" action="searchrentbooking" cssClass="form">
<s:textfield name ="rentbookingid" label="Enter Rent Booking Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${rbpojo ne null}">
<h1>Rent Booking data Found</h1>
<table border="1" align="center">

<tr><th>RentBooking Id</th>
<th>Customer Id</th>
<th>Rent Start Date</th>
<th>Rent Edn Date</th>
<th>Rent Cost</th>
<th>Rent Status</th>

			</tr><tr><td>
<c:out value="${rbpojo.rentbookingid}"></c:out></td><td>
<c:out value="${rbpojo.customerid}"></c:out></td><td>
<c:out value="${rbpojo.rentstartdate}"></c:out></td><td>
<c:out value="${rbpojo.rentedndate}"></c:out></td><td>
<c:out value="${rbpojo.rentcost}"></c:out></td><td>
<c:out value="${rbpojo.rentstatus}"></c:out></td>
</tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>