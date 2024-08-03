<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style1.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 
 
<h3 align="center"><u>View All BUSES</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
 
<td>ID</td> 
<td>NAME</td> 

</tr> 
 
<c:forEach items="${cusdata}"  var="cus"> 
<tr> 

<td><c:out value="${cus.id}" /></td> 
<td><c:out value="${cus.busname}" /></td> 


 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>