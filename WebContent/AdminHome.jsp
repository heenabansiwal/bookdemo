<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<jsp:include page="adminHeader.jsp"></jsp:include>

</head>
<body>


<h1>WELCOME TO ADMIN SITE</h1>

<h1> <center> Online Books Store</center></h1>



<table border="4" align="center" width="900" height="300">
<tr><th>Table</th><th>Insert</th><th>Search</th><th>Update</th><th>Delete</th></tr>
<tr><td><b>Admin Table</b></td><td><a href="Admintable.jsp">Insert</a></td><td><a href="AdminSearch.jsp">Search</a></td><td><a href="AdminUpdate.jsp">Update</a></td><td><a href="AdminDelete.jsp">Delete</a></td></tr>
<tr><td><b>Book Table</b></td><td><a href="Booktable.jsp">Insert</a></td><td><a href="BooktableSearch.jsp">Search</a></td><td><a href="BooktableUpdate.jsp">Update</a></td><td><a href="BooktableDelete.jsp">Delete</a></td></tr>
<tr><td><b>Book Buy Table</b></td><td><a href="BookBuytable.jsp">Insert</a></td><td><a href="BookBuytableSearch.jsp">Search</a></td><td><a href="BookBuytableUpdate.jsp">Update</a></td><td><a href="BookBuytableDelete.jsp">Delete</a></td></tr>
<tr><td><b>Customer Table</b></td><td><a href="Customertable.jsp">Insert</a></td><td><a href="CustomertableSearch.jsp">Search</a></td><td><a href="CustomertableUpdate.jsp">Update</a></td><td><a href="CustomertableDelete.jsp">Delete</a></td></tr>
<tr><td><b>Feedback Table</b></td><td><a href="Feedbacktable.jsp">Insert</a></td><td><a href="FeedbacktableSearch.jsp">Search</a></td><td><a href="FeedbacktableUpdate.jsp">Update</a></td><td><a href="FeedbacktableDelete.jsp">Delete</a></td></tr>
<tr><td><b>Rent Booking Table</b></td><td><a href="Rentbookingtable.jsp">Insert</a></td><td><a href="RentbookingtableSearch.jsp">Search</a></td><td><a href="RentbookingtableUpdate.jsp">Update</a></td><td><a href="RentbookingtableDelete.jsp">Delete</a></td></tr>







</table>







</body>
<jsp:include page="Footer1.jsp"></jsp:include>
</html>