<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@ taglib uri="/struts-tags" prefix="s" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<%-- <s:head/> --%>
<jsp:include page="Header1.jsp"></jsp:include>

</head>           

<body>
<center><h3>Add Old Books For Sell</h3></center>
<table align="center">
<form action="booktableactionform" method="post" enctype="multipart/form-data">
<tr><td>
  <label for="bookisbn">Book Isbn No:</label></td><td>
  <input type="text" id="bookisbn" name="bookisbn"><br><br><br><br></td></tr>
  <tr><td>
    <label for="title">Book Title:</label></td><td>
  <input type="text" id="title" name="title"><br><br><br><br></td></tr>
  <tr><td>
    <label for="category">Book Category:</label></td><td>
  <input type="text" id="category" name="category"><br><br><br><br></td></tr>
<tr><td>
 <label for="cost">Book Cost:</label></td><td>
  <input type="text" id="cost" name="cost"><br><br><br><br></td></tr>
<tr><td>
<label for="description">Book Description:</label></td><td>
  <textarea id="description" name="description" rows="4" cols="19"> </textarea><br><br><br><br></td></tr>
<tr><td>
<label for="publishername">Publisher Name:</label></td><td>
  <input type="text" id="publishername" name="publishername"><br><br><br><br></td></tr>
<tr><td>
 <label for="coverpage">Coverpage:</label></td><td>
  <input type="text" id="coverpage" name="coverpage"><br><br><br><br></td></tr>
 <tr><td>
<label for="fileUpload">Select a file to upload:</label></td><td>
<input type="file" id="fileUpload" name="fileUpload" size="1000"><br><br><br></td></tr>

  <tr><td>
	  <input type="submit" value="Submit" ></input>
	  <input type="submit" value="Cancel" ></input></td></tr>	
	</form>
	</table>
<jsp:include page="Footer1.jsp"></jsp:include>
</body>
</html>