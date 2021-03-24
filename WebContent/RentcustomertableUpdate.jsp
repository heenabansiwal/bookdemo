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
<h2>Update feedback</h2>
<p>
<c:if test="${rcpojo eq null}">
<s:form method="post" action="updateRentcustomersearch" cssClass="form">
<s:textfield name ="rentcustid" label="Enter rentcustid id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${rcpojo ne null}">
<s:form action="updateRentcustomeraction" method="post" cssClass="form">
<s:textfield  name="rentcustid" label="Enter rentcustid" value="%{#request.rcpojo.rentcustid}" ></s:textfield >
	<s:textfield  name="rentcost" label="Enter rentcost" value="%{#request.rcpojo.rentcost}"></s:textfield>
	<s:textfield name="bookisbn" label="Enter bookisbn" value="%{#request.rcpojo.bookisbn}"></s:textfield>
	
	
		
	
	<s:submit value="update" ></s:submit>
</s:form>
<h1>Rentcustomer data Found</h1>
<c:out value="${rcpojo.rentcustid}"></c:out>
<c:out value="${rcpojo.rentcost}"></c:out>
<c:out value="${rcpojo.bookisbn}"></c:out>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>