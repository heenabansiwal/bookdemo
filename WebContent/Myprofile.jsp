<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<title>My Profile</title>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<s:form action="updateCustomersearch" method="post" cssClass="form">

   <s:hidden  name="customerid" value="%{#request.ctpojo.customerid}" ></s:hidden >
	<s:textfield  name="name" label="Enter name" value="%{#request.ctpojo.name}"></s:textfield>
	<s:textarea name="address" label="Enter address" value="%{#request.ctpojo.address}"></s:textarea>
	<s:textfield name="phoneno" label="Enter phoneno" value="%{#request.ctpojo.phoneno}"></s:textfield>
	<s:textfield  name="email" label ="Enter email" value="%{#request.ctpojo.email}" ></s:textfield >
	<s:password  name="password" label="Enter password" value="%{#request.ctpojo.password}"></s:password>
		
	
	<s:submit value="update" ></s:submit>
	</s:form>
	<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>