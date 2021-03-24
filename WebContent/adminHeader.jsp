<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="AdminHome.jsp" class="current">Home</a></li>
            <c:if test="${Admin_name eq null}">
	        <li><a href="Adminlogin.jsp" class="current">Login</a></li>
            <li><a href="Admintable.jsp" class="current">New_Admin</a></li>
           </c:if> 
	     <c:if test="${Admin_name ne null}">
	     <li>Hello ${Admin_name}</li>
     	  <li><a href="updateadminsearch?adminid=${admin_id}" class="current">Admin_Profile</a></li>
              <li><a href="generateReportAdmin.jsp" class="current">All Reports</a></li>
           <!--  <li><a href="#" class="current">My Order</a></li> -->
              <li><a href="adminlogoutAction" class="current">LogOut</a></li>
          	   </c:if>
         
           <!--  <li><a href="BooktableSearch.jsp">Search</a></li>
            <li><a href="viewAllbook.jsp">Books</a></li>            
            <li><a href="subpage.html">New Releases</a></li>  
            <li><a href="#">Company</a></li> 
            <li><a href="#">Contact</a></li> -->
    	</ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
        	<p>
                 <span>25%</span> discounts for
        purchase over 999
        	</p>
			<a href="Booktable.jsp" style="margin-left: 50px;">Read more...</a>
        </div>
        
        
        <div id="templatemo_new_books">
        	<ul>
                <li>28 Summers</li>
                <li>In Five Years</li>
                <li>CountDown 1945</li>
            </ul>
            <a href="viewAllbookaction" style="margin-left: 50px;">Read more...</a>
        </div>
    </div>  
    <!-- end of footer --> </body>
</html>