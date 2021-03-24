<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<jsp:include page="Header1.jsp"></jsp:include> 

</head>
<body>
<center><h1> Your Cart Details Is</h1></center>
<table border=1 width="100%">
<s:iterator value="cartlist" var="ab">
<tr><th>BOOKID</th>
<th>BOOKISBN</th>
<th>TITLE</th>
<th>CATEGORY</th>
<th>COST</th>
<th>DESCRIPTION</th>
<th>PUBLISHERNAME</th>
<th>COVERPAGE</th>
<th>BOOKS</th>
<th>DELETE</th>
</tr>
<tr>
<td>${ab.bookid}</td>
<td>${ab.bookisbn}</td>
<td>${ab.title}</td>
<td>${ab.category}</td>
<td>${ab.cost}</td>
<td>${ab.description}</td>
<td>${ab.publishername}</td>
<td>${ab.coverpage}</td>
<td><img src="data:image/jpg;base64,${ab.imgstr}" width="100" height="100"/></td>
<td><a href="deletefromcartaction?bookid=${ab.bookid}">Delete Product</a></td>


</tr>
</s:iterator>

<tr><td colspan="4">Total Amount is : </td><td>${total}</td></tr>
</table>
<br><br>
<center>

<a href="Paymenttable.jsp" algin="center" >Process For payment</a>
<hr>
<a href="viewAllbook.jsp">Process For Shopping</a>
<hr>
<a href="viewrentpaymentaction">Buy on rent</a>
<hr/></center>
</body>
<jsp:include page="Footer1.jsp"></jsp:include>

</html>