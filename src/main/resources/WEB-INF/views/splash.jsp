<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>World Gate Travel Agency - LOGGED IN</title>
</head>

<body>
<h4>--------------------------------</h4>
<h4>--------------------------------</h4>
<h2> LOGGED IN </h2>
<h4>--------------------------------</h4>
 Session JSTL Scope name:  <%-- ${ loggedInUser.firstName }  --%>   <c:out value='${sessionScope.loggedInUser.firstName}' /> 
<h4>--------------------------------</h4>
Session Scope:    <%-- ${ sessionScope.loggedInUser.lastName } --%>       <c:out value="${sessionScope.loggedInUser.lastName}"/> 
<h4>--------------------------------</h4> 
 Expression Language name:   ${ loggedInUser.firstName }
 <h4>--------------------------------</h4> 

<h2><a href="logout">Logout</a></h2>

<!-- <form method="GET" action="processLogout">
	<input type="submit" value="LOG OUT">
</form> -->



</body>






</html>