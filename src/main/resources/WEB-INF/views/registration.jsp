<!-- <!DOCTYPE html> -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
		<style type="text/css">
			.error {
				color: red;
			}
		</style>
	</head>
	<body>
<%-- 		<h1>Registration</h1>
		<h4 class="info"> ${ RegistrationErrorMsg }   </h4>
<h4 class="info"> ${ successRegistration }   </h4> --%>
		
		
		<sf:form action="registerProcess" method="post" modelAttribute="userTemp">
				<sf:errors path="userName" cssClass="error" element="div" />
					<sf:label path="userName">Enter a username</sf:label>
					<sf:input path="userName"/><br/>
					
					<sf:label path="firstName">Enter your first name</sf:label>
					<sf:input path="firstName"/><br/>
					
					<sf:label path="lastName">Enter your last name</sf:label>
					<sf:input path="lastName"/><br/>
					
					<sf:label path="password">Create a Password</sf:label>
					<sf:input path="password" type="password"/><br/>
					
					<!-- <label for="password">Enter your Password again</label>
					<input type="password" name="passwordParamAgain"/><br/> -->
					
					<sf:label path="email" for="email">Enter a valid email</sf:label>
					<sf:input path="email" type="email"/>
					
					<input class="modalSection center" type="submit" value="Submit">
					</sf:form>
					
					
					<h2><a href="homepage">Homepage</a></h2>
		
	</body>
</html>