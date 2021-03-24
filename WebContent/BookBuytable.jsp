<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

<s:head/>
</head>
<body>
<s:form action="bookbuyactionform" method="post">
<s:textfield name="customerid" label="Enter your Customer ID"></s:textfield>
<s:textfield name="orderdate" label="Enter your OederDate"></s:textfield>
<s:textfield name="deliveryaddress" label="Enter your Deliveryaddress"></s:textfield>
<s:textfield name="deliverytime" label="Enter your Deliverytime"></s:textfield>
<s:textfield name="phno" label="Enter your Phone No"></s:textfield>
<s:textfield name="modeofpayment" label="Enter your Modeofpayment"></s:textfield>
<s:submit value="submit" ></s:submit>

</s:form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>