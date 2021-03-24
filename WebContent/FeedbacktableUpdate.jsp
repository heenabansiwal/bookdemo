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
<c:if test="${fpojo eq null}">
<s:form method="post" action="updateFeedbacksearch" cssClass="form">
<s:textfield name ="feedid" label="Enter feedback id"></s:textfield>
<s:submit value="Search"></s:submit>
</s:form>
</c:if>

<c:if test="${fpojo ne null}">
<s:form action="updateFeedbackaction" method="post" cssClass="form">
<s:textfield  name="feedid" value="%{#request.fpojo.feedid}" ></s:textfield >
	<s:textfield  name="feedsend" label="Enter feedsend" value="%{#request.fpojo.feedsend}"></s:textfield>
	<s:textfield name="feedrseponse" label="Enter feedrseponse" value="%{#request.fpojo.feedrseponse}"></s:textfield>
	<s:textarea name="feeddescription" label="Enter feeddescription" value="%{#request.fpojo.feeddescription}"></s:textarea>
	
		
	
	<s:submit value="update" ></s:submit>
</s:form>
<h1>feedback data Found</h1>
<c:out value="${fpojo.feedid}"></c:out>
<c:out value="${fpojo.feedsend}"></c:out>
<c:out value="${fpojo.feedrseponse}"></c:out>
<c:out value="${fpojo.feeddescription}"></c:out>
</c:if>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>