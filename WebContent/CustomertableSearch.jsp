<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Customer</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>
</head>
<body>
<h2>Search Customer</h2>
<p>
<c:if test="${ctpojo eq null}">
<s:form method="post" action="searchcustomer" cssClass="form">
<s:textfield name ="customerid" Label="Enter Customer Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${ctpojo ne null}">
<h1>Customer data Found</h1>
<table border="1" align="center">

<tr><th>Customer Id</th>
<th>Customer Name</th>
<th>Customer Address</th>
<th>Customer Phoneno</th>
<th>Customer email</th>
<th>Customer password</th>

			</tr><tr><td>
<c:out value="${ctpojo.customerid}"></c:out></td><td>
<c:out value="${ctpojo.name}"></c:out></td><td>
<c:out value="${ctpojo.address}"></c:out></td><td>
<c:out value="${ctpojo.phoneno}"></c:out></td><td>
<c:out value="${ctpojo.email}"></c:out></td><td>
<c:out value="${ctpojo.password}"></c:out></td>
</tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>