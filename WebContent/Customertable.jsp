<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link href="templatemo_style.css" rel="stylesheet" type="text/css" />
  <s:head/>  
<jsp:include page="Header1.jsp"></jsp:include>
</head>
<body>
<center>Customer Registration</center> 
<s:form action="customeractionform" method="post" cssClass="form">

	<s:textfield  name="name" label="Enter your Name"></s:textfield>
	<s:textarea name="address" label="Enter your address"></s:textarea>
	<s:textfield name="phoneno" label="Enter your phone no" ></s:textfield>
	<s:textfield name="email" label="Enter your email"></s:textfield>
	<s:password name="password" label="Enter your password"></s:password>
	<s:submit value="submit" ></s:submit>
	<s:submit value="cancel"></s:submit>
</s:form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>