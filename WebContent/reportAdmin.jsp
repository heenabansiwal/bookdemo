<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<display:table id="displayAdmin" name="adminlist"  pagesize="10"  export="true" requestURI="" keepStatus="true"   style="width : 100%;" class=" table table-condensed  table-hover">
	<display:column style="width: 10%" title="&nbsp;SNo"  >						
	${displayAdmin_rowNum}		 	 	
	</display:column>
	<display:column property="adminid" title="Admin id" style="width : 30%" />
    <display:column property="adminname" title="Admin Name" style="width : 30%" />
    <display:column property="adminaddress" title="Admin Address" style="width : 30%" />
    <display:column property="adminpassword" title="Admin Password" style="width : 30%" />
    <display:column property="adminphhono" title="Admin Phone No" style="width : 30%" />
    <display:column property="admineamil" title="Admin Email" style="width : 30%" />
    <display:column property="adminpost" title="Admin Post" style="width : 30%" />
   
    

    <display:setProperty name="paging.banner.placement"  value="bottom" />
    <display:setProperty name="export.excel.filename" value="Articles.xls"/>
  	<display:setProperty name="export.pdf.filename" value="Articles.pdf"/>
  	<display:setProperty name="export.rtf.filename" value="Articles.rtf"/>
  	<display:setProperty name="export.csv.filename" value="Articles.csv"/>	 
    <display:footer>  
	</display:footer>  
	
</display:table>
</body>
</html>