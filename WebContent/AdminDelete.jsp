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
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search Admin</h2>
<p>

<c:if test="${apojo eq null}">
<center>
<s:form method="post" action="deletesearchadmin" >
<s:textfield name ="adminid" Label="Enter Admin id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</center>
</c:if>

<c:if test="${apojo ne null}">
<h1>Admin data Found</h1>
<c:out value="${apojo.adminid}"></c:out>
<c:out value="${apojo.adminname}"></c:out>
<c:out value="${apojo.adminaddress}"></c:out>
<c:out value="${apojo.adminpassword}"></c:out>
<c:out value="${apojo.adminphhono}"></c:out>
<c:out value="${apojo.admineamil}"></c:out>
<c:out value="${apojo.adminpost}"></c:out>

<a href="deleteadminaction?adminid=${apojo.adminid}">delete</a>
</c:if>

<jsp:include page="Footer1.jsp"></jsp:include>

</body>
</html>