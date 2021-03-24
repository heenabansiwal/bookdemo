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
<h2>Search Customertable</h2>
<p>
<c:if test="${ctpojo eq null}" >
<s:form method="post" action="deleteCustomersearch" cssClass="form">
<s:textfield name ="customerid" Label="Enter customerid"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>


<c:if test="${ctpojo ne null}">
<h1>Customer data Found</h1>
<c:out value="${ctpojo.customerid}"></c:out>
<c:out value="${ctpojo.name}"></c:out>
<c:out value="${ctpojo.address}"></c:out>
<c:out value="${ctpojo.phoneno}"></c:out>
<c:out value="${ctpojo.email}"></c:out>
<c:out value="${ctpojo.password}"></c:out>

<a href="deleteCustomeraction?customerid=${ctpojo.customerid}">delete</a>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>