<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
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

<center><h1>Payment amount:-${tamt}</h1></center>
<s:form action="paymentactionform" method="post" cssClass="form">
<%-- <s:textfield name="customerid" label="Customerid"></s:textfield> --%>

<%-- <s:textfield name="paydate" label="Paydate"></s:textfield>
<s:textfield name="payAmt" label="PayAmt"></s:textfield>
 --%>
 
<s:select name="paymode"  list="{'Cash On Delivery','Netbanking','Debit Card','Credit Card'}" label="Select the payment mode "></s:select>


<s:submit value="submit" ></s:submit>
</s:form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>