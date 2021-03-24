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
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search Paymenttable</h2>
<p>
<c:if test="${Ppojo eq null}">
<s:form method="post" action="deletePaymentsearch" cssClass="form">
<s:textfield name ="paymentid" label="Enter paymentid id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>


<c:if test="${Ppojo ne null}">

<h1>Payment data Found</h1>
<c:out value="${Ppojo.paymentid}"></c:out>
<c:out value="${Ppojo.customerid}"></c:out>
<c:out value="${Ppojo.type}"></c:out>
<c:out value="${Ppojo.paydate}"></c:out>
<c:out value="${Ppojo.payAmt}"></c:out>
<c:out value="${Ppojo.paymode}"></c:out>
<c:out value="${Ppojo.cardno}"></c:out>
<c:out value="${Ppojo.transactionno}"></c:out>
<c:out value="${Ppojo.expirydate}"></c:out>
<c:out value="${Ppojo.cvvno}"></c:out>
<c:out value="${Ppojo.paymentStatus}"></c:out>

<a href="deletePaymentaction?feedid=${Ppojo.paymentid}">delete</a>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>