<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Book Buy Sell</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search Book Buy Sell</h2>
<p>
<c:if test="${bpojo eq null}">
<s:form method="post" action="searchBookbuysell">
<s:textfield name ="bookbuyid" Label="Enter Book Buy Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${bpojo ne null}">
<h1>Bookbuysell data Found</h1>
<table border="1" align="center">

<tr><th>BookBuy ID</th>
<th>Order No</th>
<th>Book Isbn</th>
<th>Status</th>
			</tr><tr><td>
<c:out value="${bpojo.bookbuyid}"></c:out></td><td>
<c:out value="${bpojo.orderno}"></c:out></td><td>
<c:out value="${bpojo.bookisbn}"></c:out></td><td>
<c:out value="${bpojo.status}"></c:out></td></tr></table>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>