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
<div class="topnav">
    	<ul>
            <li><a href="Homepage.jsp" class="current">Home</a></li>
            <c:if test="${Customer_name eq null}">
	        <li><a href="Customerlogin.jsp" class="current">Login</a></li>
            <li><a href="Customertable.jsp" class="current">Registration</a></li>
           </c:if> 
	     <c:if test="${Customer_name ne null}">
	     <li>Hello ${user_name}</li>
     	  <li><a href="updateCustomersearch?customerid=${user_id}" class="current">My Profile</a></li>
            <li><a href="viewalldatacart" class="current">View Cart</a></li>
                <li><a href="viewAllbookaction" class="current">Books</a></li>
                <li><a href="viewmyorderAction?customerid=${user_id}" class="current">MyOrder</a></li>
                 <li><a href="Booktable.jsp" class="current">Sell Books</a></li>
          	    <li><a href="Feedbacktable.jsp" class="current">Feedback</a></li>
          	  <li><a href="userlogoutAction" class="current">LogOut</a></li>
          	   </c:if>
          	
          	   
           <!--  <li><a href="Adminlogin.jsp">Adminlogin</a></li> -->
            <!-- <li><a href="BooktableSearch.jsp">Search</a></li>
            
                    
            <!-- <li><a href="subpage.html">New Releases</a></li>  
            <li><a href="#">Company</a></li> 
            <li><a href="#">Contact</a></li> -->
            
    	
    	
    	</ul>
    	   
    </div> </div><!-- end of menu -->
     Search  <input algin="left" type="text" placeholder="Search..">
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