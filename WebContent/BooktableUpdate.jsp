<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Update Book</h2>
<p>
<c:if test="${btpojo eq null}">
<s:form method="post" action="updateBooksearch">
<s:textfield name ="bookid" Label="Enter bookid"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${btpojo ne null}">
<s:form action="updatebookaction" method="post">
<s:textfield  name="bookid" value="%{#request.btpojo.bookid}" ></s:textfield >
	<s:textfield  name="bookisbn" label="Enter your Order No" value="%{#request.btpojo.bookisbn}"></s:textfield>
	<s:textfield name="title" label="Enter title" value="%{#request.btpojo.title}"></s:textfield>
	<s:textfield name="category" label="Enter category" value="%{#request.btpojo.category}"></s:textfield>
	<s:textfield  name="cost" label ="Enter cost" value="%{#request.btpojo.cost}" ></s:textfield >
	<s:textfield  name="description" label="Enter description" value="%{#request.btpojo.description}"></s:textfield>
	<s:textfield name="publishername" label="Enter publishername" value="%{#request.btpojo.publishername}"></s:textfield>
	<s:textfield name="coverpage" label="Enter coverpage" value="%{#request.btpojo.coverpage}"></s:textfield>
	
	
	
	
	<s:submit value="update" ></s:submit>
</s:form>
<h1>Book data Found</h1>
<c:out value="${btpojo.bookid}"></c:out>
<c:out value="${btpojo.bookisbn}"></c:out>
<c:out value="${btpojo.title}"></c:out>
<c:out value="${btpojo.category}"></c:out>
<c:out value="${btpojo.cost}"></c:out>
<c:out value="${btpojo.description}"></c:out>
<c:out value="${btpojo.publishername}"></c:out>
<c:out value="${btpojo.coverpage}"></c:out>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>