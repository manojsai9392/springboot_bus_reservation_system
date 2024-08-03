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
 
<h3 align="center"><u>Delete Employee</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
 
<td>USERNAME</td> 
<td>EMAIL</td> 
<td>PASSWORD</td>
<td>CONTACT</td> 

</tr> 
 
<c:forEach items="${customerdata}"  var="customer"> 
<tr> 

<td><c:out value="${customer.username}" /></td>
<td><c:out value="${customer.email}" /></td>
<td><c:out value="${customer.password}" /></td>
<td><c:out value="${customer.contactno}" /></td>
<td>
<a href='<c:url value="delete/${customer.email}"></c:url>'>Delete</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>