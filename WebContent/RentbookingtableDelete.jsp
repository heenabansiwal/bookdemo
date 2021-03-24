<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
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
<h2>Search RentBooking table</h2>
<p>
<c:if test="${rbpojo eq null}">
<s:form method="post" action="deleteRentbookingsearch" cssClass="form">
<s:textfield name ="rentbookingid" label="Enter rentbookingid id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>


<c:if test="${rbpojo ne null}">

<h1>Rent Booking data Found</h1>
<c:out value="${rbpojo.rentbookingid}"></c:out>
<c:out value="${rbpojo.customerid}"></c:out>
<c:out value="${rbpojo.rentstartdate}"></c:out>
<c:out value="${rbpojo.rentedndate}"></c:out>
<c:out value="${rbpojo.rentcost}"></c:out>
<c:out value="${rbpojo.rentstatus}"></c:out>

<a href="deleteRentbookingaction?rentbookingid=${rbpojo.rentbookingid}">delete</a>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>