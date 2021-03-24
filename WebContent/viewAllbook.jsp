<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<jsp:include page="Header1.jsp"></jsp:include> 
</head>
<body>
<center><h1>All Book List</h1></center>



<table border="1" align="center">

<tr><td>Book ID</td>
<td>Book Isbn</td>
<td> Book Title</td>
<td>Category</td>
<td>Cost</td>
<td>Description</td>
<td>Publishername</td>
<td>Coverpage</td>
<td>Book</td>
<td>Actions</td>
</tr>
<c:forEach items ="${Bklist}" var="book">
<tr><td>
<c:out value="${book.bookid}"></c:out></td><td>
<c:out value="${book.bookisbn}"></c:out></td><td>
<c:out value="${book.title}"></c:out></td><td>
<c:out value="${book.category}"></c:out></td><td>
<c:out value="${book.cost}"></c:out></td><td>
<c:out value="${book.description}"></c:out></td><td>
<c:out value="${book.publishername}"></c:out></td><td>
<c:out value="${book.coverpage}"></c:out></td>
<td><img src="data:image/jpg;base64,${book.imgstr}" width="100" height="150"/></td>
<td><a href="addtocartaction?bookid=${book.bookid}">Addtocart</a></td>

</tr>

</c:forEach>
</table>

 <jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>