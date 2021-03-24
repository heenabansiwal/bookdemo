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
<h2>Update BookBuySell</h2>
<p>
<c:if test="${bpojo eq null}">
<s:form method="post" action="updateBookBuySellsearch" align="center">
<s:textfield name ="bookbuyid" Label="Enter BookBuy id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${bpojo ne null}">
<s:form action="updateBookBuySell" method="post" align="center">
<s:textfield  name="bookbuyid" value="%{#request.bpojo.bookbuyid}" ></s:textfield >
	<s:textfield  name="orderno" label="Enter your Order No" value="%{#request.bpojo.orderno}"></s:textfield>
	<s:textfield name="bookisbn" label="Enter your BookIsbn No" value="%{#request.bpojo.bookisbn}"></s:textfield>
	<s:textfield name="status" label="Enter your Status" value="%{#request.bpojo.status}"></s:textfield>
	<s:submit value="update" ></s:submit>
</s:form>
<h1>Book Buy Sell data Found</h1>
<c:out value="${bpojo.bookbuyid}"></c:out>
<c:out value="${bpojo.orderno}"></c:out>
<c:out value="${bpojo.bookisbn}"></c:out>
<c:out value="${bpojo.status}"></c:out>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>