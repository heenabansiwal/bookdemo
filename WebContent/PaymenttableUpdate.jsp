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
<h2>Update Payment Data</h2>
<p>
<c:if test="${Ppojo eq null}">
<s:form method="post" action="updatePaymentsearch" cssClass="form">
<s:textfield name ="paymentid" Label="Enter paymentid"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${Ppojo ne null}">
<s:form action="updatePaymentaction" method="post" cssClass="form">

<s:textfield  name="paymentid" value="%{#request.Ppojo.paymentid}" ></s:textfield >
	<s:textfield  name="customerid" label="Enter customerid" value="%{#request.Ppojo.customerid}"></s:textfield>
	<s:textfield name="type" label="Enter type" value="%{#request.Ppojo.type}"></s:textfield>
	<s:textfield  name="paydate" label ="Enter paydate" value="%{#request.Ppojo.paydate}" ></s:textfield >
<s:textfield  name="payAmt" label="Enter payAmt" value="%{#request.Ppojo.payAmt}"></s:textfield>
	<s:textfield name="paymode" label="Enter paymode" value="%{#request.Ppojo.paymode}"></s:textfield>
	<s:textfield  name="cardno" label ="Enter cardno" value="%{#request.Ppojo.cardno}" ></s:textfield >
<s:textfield  name="transactionno" label="Enter transactionno" value="%{#request.Ppojo.transactionno}"></s:textfield>
	<s:textfield name="expirydate" label="Enter expirydate" value="%{#request.Ppojo.expirydate}"></s:textfield>
	<s:textfield  name="cvvno" label ="Enter cvvno" value="%{#request.Ppojo.cvvno}" ></s:textfield >
<s:textfield  name="paymentStatus" label="Enter paymentStatus" value="%{#request.Ppojo.paymentStatus}"></s:textfield>
	
		
	
	<s:submit value="update" ></s:submit>
</s:form>
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

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>