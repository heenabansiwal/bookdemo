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
<s:form method="post" action="updatebookbuysearch">
<s:textfield name ="orderno" Label="Enter Order No"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${bbpojo ne null}">
<s:form action="updatebookbuysearchaction" method="post">
<s:textfield  name="orderno" value="%{#request.bbpojo.orderno}" ></s:textfield >
	<s:textfield  name="customerid" label="Enter Cudtomer Id" value="%{#request.bbpojo.customerid}"></s:textfield>
	<s:textfield name="orderdate" label="Enter order date" value="%{#request.bbpojo.orderdate}"></s:textfield>
	<s:textarea name="deliveryaddress" label="Enter deliveryaddress" row="30" column="30" value="%{#request.bbpojo.deliveryaddress}"></s:textarea>
	<s:textfield name="deliverytime" label="Enter  deliverytime" value="%{#request.bbpojo.deliverytime}"></s:textfield>
	<s:textfield name="phno" label="Enter phone no" value="%{#request.bbpojo.phno}"></s:textfield>
	<s:textfield name="modeofpayment" label="Enter ModeOfPayment" value="%{#request.bbpojo.modeofpayment}"></s:textfield>
	<s:submit value="update" ></s:submit>
</s:form>
<h1>BookBuy data Found</h1>
<c:out value="${bbpojo.orderno}"></c:out>
<c:out value="${bbpojo.customerid}"></c:out>
<c:out value="${bbpojo.orderdate}"></c:out>
<c:out value="${bbpojo.deliveryaddress}"></c:out>
<c:out value="${bbpojo.deliverytime}"></c:out>
<c:out value="${bbpojo.phno}"></c:out>
<c:out value="${bbpojo.modeofpayment}"></c:out>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>