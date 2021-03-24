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
<h2>Search BookBuytable</h2>
<p>
<c:if test="${bbpojo eq null}">
<s:form method="post" action="deleteBookBuysearch">
<s:textfield name ="orderno" Label="Enter Order No"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${bbpojo ne null}">
<h1>BookBuy data Found</h1>
<c:out value="${bbpojo.orderno}"></c:out>
<c:out value="${bbpojo.customerid}"></c:out>
<c:out value="${bbpojo.orderdate}"></c:out>
<c:out value="${bbpojo.deliveryaddress}"></c:out>
<c:out value="${bbpojo.deliverytime}"></c:out>
<c:out value="${bbpojo.phno}"></c:out>
<c:out value="${bbpojo.modeofpayment}"></c:out>

<a href="deleteBookBuyaction?orderno=${bbpojo.orderno}">delete</a>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>