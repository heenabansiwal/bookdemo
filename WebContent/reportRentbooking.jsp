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
<display:table id="displayRentbooking" name="RentBklist"  pagesize="10"  export="true" requestURI="" keepStatus="true"   style="width : 100%;" class=" table table-condensed  table-hover">
	<display:column style="width: 10%" title="&nbsp;SNo"  >						
	${displayRentbooking_rowNum}		 	 	
	</display:column>
	<display:column property="rentbookingid" title="RentBooking Id" style="width : 30%" />
    <display:column property="customerid" title="Customer Id" style="width : 30%" />
    <display:column property="rentstartdate" title="Rent Start Date" style="width : 30%" />
    <display:column property="rentedndate" title="Rent End Date" style="width : 30%" />
    <display:column property="rentcost" title="Rent Cost" style="width : 30%" />
    <display:column property="rentstatus" title="Rent Status" style="width : 30%" />
    
   
    

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