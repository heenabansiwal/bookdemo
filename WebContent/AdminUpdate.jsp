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
<jsp:include page="adminHeader.jsp"></jsp:include>
</head>
<body>

<p>
<c:if test="${apojo eq null}">
<s:form method="post" action="updateadminsearch">
<s:textfield name ="adminid" Label="Enter Admin id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${apojo ne null}">
<center><h2>Admin Profile </h2></center>
<s:form action="updateadminsearchaction" method="post" cssClass="form">
<s:hidden  name="adminid" value="%{#request.apojo.adminid}"></s:hidden> 
	<s:textfield  name="adminname" label="Enter your Name" value="%{#request.apojo.adminname}"></s:textfield>
	<s:textarea name="adminaddress" label="Enter your address" value="%{#request.apojo.adminaddress}"></s:textarea>
	<s:textfield name="adminpassword" label="Enter your password" value="%{#request.apojo.adminpassword}"></s:textfield>
	<s:textarea name="adminphhono" label="Enter your phone no" row="30" column="30" value="%{#request.apojo.adminphhono}"></s:textarea>
	<s:textfield name="admineamil" label="Enter your email" value="%{#request.apojo.admineamil}"></s:textfield>
	<s:textfield name="adminpost" label="Enter your post" value="%{#request.apojo.adminpost}"></s:textfield>
	<s:submit value="update" ></s:submit>
</s:form>

<center><h2>Admin data </h2></center>
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


</c:if><jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>