<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Rent Customer</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>
</head>
<body>
<h2>Search Rent Customer</h2>
<p>
<c:if test="${rcpojo eq null}">
<s:form method="post" action="searchrentcustomer" cssClass="form">
<s:textfield name ="rentcustid" label="Enter Rent Customer Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${rcpojo ne null}">
<h1>Rent Customer data Found</h1>
<table border="1" align="center">

<tr><th>Rent Customer Id</th>
<th>rentcost Id</th>
<th>Book Isbn</th>

			</tr><tr><td>
<c:out value="${rcpojo.rentcustid}"></c:out></td><td>
<c:out value="${rcpojo.rentcost}"></c:out></td><td>
<c:out value="${rcpojo.bookisbn}"></c:out></td>
</tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>	 