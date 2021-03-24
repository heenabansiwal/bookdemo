<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
 
 function validateform(){
	 
	 var email = document.login.email.value;
	 var password = document.login.password.value;
	 
	 if(email==null||email==""){
		 alert("Email can't be blank");
		 return false;
	 }
	 else if(password.length<3){
		 alert("Password must be at least 3 characters long");
	 return false;
	 }
 }

</script>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<center>Login Here</center>
	<s:form name="login" action="customerLoginAction" method="post" cssClass="form" onsubmit="return validateform()">  
     
	 <s:textfield name="email" label="Enter Customer Email Id"  placehoder="Enter Customer Email ID" />   
   	<s:textfield name="password" type="password" label="Enter Password" placehoder="Enter Password" />
   
      <s:submit value="Login" />
   </s:form>  


<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>