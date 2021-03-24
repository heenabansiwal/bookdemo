<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Payment</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
 <s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>

</head>
<body>
<h2>Search Payment</h2>
<p>
<c:if test="${Ppojo eq null}">
<s:form method="post" action="searchpayment" cssClass="form">
<s:textfield name ="paymentid" Label="Enter Payment Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${Ppojo ne null}">
<h1>Payment data Found</h1>
<table border="1" align="center">

<tr><th>Payment Id</th>
<th>Customer Id</th>
<th>Payment Type</th>
<th>Paydate</th>
<th>Pay Amt</th>
<th>Pay Mode</th>
<th>Card No</th>
<th>Transaction No</th>
<th>Expiry Date</th>
<th>Cvv No</th>
<th>Payment Status</th>

			</tr><tr><td>
<c:out value="${Ppojo.paymentid}"></c:out></td><td>
<c:out value="${Ppojo.customerid}"></c:out></td><td>
<c:out value="${Ppojo.type}"></c:out></td><td>
<c:out value="${Ppojo.paydate}"></c:out></td><td>
<c:out value="${Ppojo.payAmt}"></c:out></td><td>
<c:out value="${Ppojo.paymode}"></c:out></td><td>
<c:out value="${Ppojo.cardno}"></c:out></td><td>
<c:out value="${Ppojo.transactionno}"></c:out></td><td>
<c:out value="${Ppojo.expirydate}"></c:out></td><td>
<c:out value="${Ppojo.cvvno}"></c:out></td><td>
<c:out value="${Ppojo.paymentStatus}"></c:out></td>
</tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>