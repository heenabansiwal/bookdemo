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
<display:table id="displayPayment" name="Paymentlist"  pagesize="10"  export="true" requestURI="" keepStatus="true"   style="width : 100%;" class=" table table-condensed  table-hover">
	<display:column style="width: 10%" title="&nbsp;SNo"  >						
	${displayPayment_rowNum}		 	 	
	</display:column>
	<display:column property="paymentid" title="Payment Id" style="width : 30%" />
    <display:column property="customerid" title="Customer Id" style="width : 30%" />
    <display:column property="type" title="Payment Type" style="width : 30%" />
    <display:column property="paydate" title="Payment Date " style="width : 30%" />
    <display:column property="payAmt" title="Payment Amount" style="width : 30%" />
    <display:column property="paymode" title="Payment Mode" style="width : 30%" />
    <display:column property="cardno" title="Card No" style="width : 30%" />
     <display:column property="transactionno" title="Transaction No " style="width : 30%" />
    <display:column property="expirydate" title="Expiry Date" style="width : 30%" />
    <display:column property="cvvno" title="Cvv No" style="width : 30%" />
    <display:column property="paymentStatus" title="Payment Status" style="width : 30%" />
   
   
    

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