<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Admin</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="adminHeader.jsp"></jsp:include>
</head>
<body>
<h2>Edited Profile</h2>
<p>
<c:if test="${apojo eq null}">
<s:form method="post" action="searchadmin">
<s:textfield name ="adminid" Label="Enter Admin id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${apojo ne null}">
<h1>Admin data Found</h1>
<table border="1" align="center">

<tr><th>Admin ID</th>
<th>Admin Name</th>
<th>Admin Address</th>
<th>Admin Password</th>
<th>Admin Phone No</th>
<th>Admin Email</th>
<th>Admin Post</th>
			</tr><tr><td>
<c:out value="${apojo.adminid}"></c:out></td><td>
<c:out value="${apojo.adminname}"></c:out></td><td>
<c:out value="${apojo.adminaddress}"></c:out></td><td>
<c:out value="${apojo.adminpassword}"></c:out></td><td>
<c:out value="${apojo.adminphhono}"></c:out></td><td>
<c:out value="${apojo.admineamil}"></c:out></td><td>
<c:out value="${apojo.adminpost}"></c:out></td></tr></table>


</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>