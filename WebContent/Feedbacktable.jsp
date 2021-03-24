<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<jsp:include page="Header1.jsp"></jsp:include>
<s:head/>
</head>
<body>
<center><h3>Give Feedback</h3></center>
<s:form action="feedbackactionform" method="post" cssClass="form">
<s:textfield name="feedsend" label="Enter Feedback Send"></s:textfield>
<s:textfield name="feedrseponse" label="Enter Feedback Response"></s:textfield>
<s:textarea name="feeddescription" label="Enter Feedback Description"></s:textarea>
<s:submit value="submit" ></s:submit>

</s:form>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>