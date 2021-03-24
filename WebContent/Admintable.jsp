<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@ taglib uri="/struts-tags" prefix="s" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Registration</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%--  <s:head/> --%> 
<jsp:include page="adminHeader.jsp"></jsp:include>
</head> 

<body>



    <form  action="adminactionform" method="post">
    <div id="form">
   
    <table align="center"><tr>
 <td><label for="adminname">Enter New Admin Name:</label></td>
 <td><input type="text" id="adminname" name="adminname"><br><br><br><br></td></tr>
 
  
  <tr><td><label for="adminaddress">Enter your address:</label></td>
<td>  <input type="text" id="adminaddress" name="adminaddress"><br><br><br><br></td></tr>
   
 <tr><td> <label for="adminpassword">Enter your password:</label></td>
<td>  <input type="password" id="adminpassword" name="adminpassword"><br><br><br><br></td></tr>
  
	<tr><td><label for="adminphhono">Enter your phone no:</label></td>
 <td> <input type="text" id="adminphhono" name="adminphhono"><br><br><br><br></td></tr>
  
	<tr><td><label for="admineamil">Enter your email:</label></td>
  <td><input type="text" id="admineamil" name="admineamil"><br><br><br><br></td></tr>
  
	<tr><td><label for="adminpost">Enter New Admin post:</label></td>
 <td> <input type="text" id="adminpost" name="adminpost"><br><br><br><br></td></tr>
  
		 <tr><td><input type="submit" value="Submit" ></input></td>
	 <td><input type="submit" value="Cancel" ></input></td></tr>
	
	
	
	
	</table>
	
	</div>
	
	</form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>