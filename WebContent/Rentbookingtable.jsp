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
<s:form action="rentbookingform" method="post" cssClass="form">
<s:textfield name="customerid" label="Customerid"></s:textfield>
<s:textfield name="rentstartdate" label="Rentstartdate"></s:textfield>
<s:textfield name="rentedndate" label="Rentedndate"></s:textfield>
<s:textfield name="rentcost" label="Rentcost"></s:textfield>
<s:textfield name="rentstatus" label="Rentstatus"></s:textfield>
<s:submit value="submit" ></s:submit>

</s:form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>