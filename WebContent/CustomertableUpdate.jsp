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
<center><h2>Customer Profile</h2></center>
<p>
<c:if test="${ctpojo eq null}">
<s:form method="post" action="updateCustomersearch" cssClass="form">
<s:textfield name ="customerid" Label="Enter customerid"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${ctpojo ne null}">
<s:form action="updateCustomeraction2" method="post" cssClass="form">
<s:hidden  name="customerid" value="%{#request.ctpojo.customerid}" ></s:hidden>
	<s:textfield  name="name" label="Enter name" value="%{#request.ctpojo.name}"></s:textfield>
	<s:textarea name="address" label="Enter address" value="%{#request.ctpojo.address}"></s:textarea>
	<s:textfield name="phoneno" label="Enter phoneno" value="%{#request.ctpojo.phoneno}"></s:textfield>
	<s:textfield  name="email" label ="Enter email" value="%{#request.ctpojo.email}" ></s:textfield >
	<s:textfield  name="password" label="Enter password" value="%{#request.ctpojo.password}"></s:textfield>
		
	
	<s:submit value="update" ></s:submit>
</s:form>
<center><h2>Customer data</h2></center>
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