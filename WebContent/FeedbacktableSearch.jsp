<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Search Feedback</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<s:head/> 
<jsp:include page="Header1.jsp"></jsp:include>
</head>
<body>
<h2>Search Feedback</h2>
<p>
<c:if test="${fpojo eq null}">
<s:form method="post" action="searchfeedback" cssClass="form">
<s:textfield name ="feedid" label="Enter Feedback Id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${fpojo ne null}">
<h1>Feedback data Found</h1>
<table border="1" align="center">

<tr><th>Feedback Id</th>
<th>Feedback Send</th>
<th>Feedback Response</th>
<th>Feedback Description</th>

			</tr><tr><td>
<c:out value="${fpojo.feedid}"></c:out></td><td>
<c:out value="${fpojo.feedsend}"></c:out></td><td>
<c:out value="${fpojo.feedrseponse}"></c:out></td><td>
<c:out value="${fpojo.feeddescription}"></c:out></td>
</tr></table>

</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>