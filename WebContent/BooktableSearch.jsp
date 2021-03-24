<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search book</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search book</h2>
<p>
<c:if test="${btpojo eq null}">
<s:form method="post" action="searchbooktable">
<s:textfield name ="bookid" Label="Enter book id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${btpojo ne null}">
<h1>book data Found</h1>
<table border="1" align="center">


<tr><th>book ID</th>
<th>bookisbn</th>
<th>title</th>
<th>category</th>
<th>cost</th>
<th>description</th>
<th>publishername</th>
<th>coverpage</th>
</tr><tr><td>
<c:out value="${btpojo.bookid}"></c:out></td><td>
<c:out value="${btpojo.bookisbn}"></c:out></td><td>
<c:out value="${btpojo.title}"></c:out></td><td>
<c:out value="${btpojo.category}"></c:out></td><td>
<c:out value="${btpojo.cost}"></c:out></td><td>
<c:out value="${btpojo.description}"></c:out></td><td>
<c:out value="${btpojo.publishername}"></c:out></td><td>
<c:out value="${btpojo.coverpage}"></c:out></td>
<td><img src="data:image/jpg;base64,${btpojo.imgstr}" width="240" height="300"/></td>
</tr></table>


</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>