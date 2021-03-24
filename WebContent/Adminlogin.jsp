<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="adminHeader.jsp"></jsp:include>

</head>
<body>
<center><h1>Admin Login</h1></center>

	<s:form action="adminLoginAction" method="post" cssClass="form" >  
     
	 <s:textfield name="admineamil" label="Enter Admin Email Id"  placehoder="Enter Customer Email ID" />   
   	<s:textfield name="adminpassword" type="password" label="Enter Password" placehoder="Enter Password" />
   
      <s:submit value="Login" />
   </s:form>  


<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html> 