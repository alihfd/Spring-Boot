<!-- <!DOCTYPE html> -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %> 
<!DOCTYPE html>
<html>
<head>
<style>

</style>
	<link rel="stylesheet" href="resources/mystyle.css">
</head>
<title>World Gate</title>

<!--<BUTTON class="FixedLogin">login</BUTTON>
<BUTTON class="FixedSignup">sign up</BUTTON> -->

<%-- <c:if test="${empty var1}">
    var1 is empty or null.
</c:if>       
<c:if test="${not empty var1}">
    var1 is NOT empty or null.
</c:if>
 --%>
<body>
	<div id="menuHeader" class="fullBox">
		 

		<c:if test="${empty sessionScope.loggedInUser.userName}">
			<div id="signup" class="menuButton"><a href="registration">Sign Up</a></div>
			<div id="signup" class="menuButton" onclick="showLoginModal()">Login</div>
		</c:if>
		
		<c:if test="${not empty sessionScope.loggedInUser.userName}">
			<div id="signup" class="menuButton"><a href="logout">Logout</a></div>
    		<div id="profile" class="menuButton">Welcome ${ sessionScope.loggedInUser.firstName }!
				<div id="dropdown-content">
					<div class="dropLink" href="" onclick="drop(1)">My Profile</div>
					<div class="dropLink" href="" onclick="drop(2)">My Trips</div>
					<div class="dropLink" href="" onclick="drop(3)">My Loyalty Program</div>
					<div class="dropLink" href="" onclick="drop(4)">Settings</div>
				</div>
			</div>
		</c:if>
	</div>
<div class="wrapper">	


<h4 class="info"> ${ errorMsg }   </h4>
<h4 class="info"> ${ RegistrationerrorMsg }   </h4>
<h4 class="info"> ${ successRegistration }   </h4>

	<a href="homepage">
		<input type="image" id="flight" src="resources/images/flight.png"/>
	</a>

	<a href="wg_h">
		<input type="image" id="hotel" src="resources/images/hotel.jpg"/>
	</a>

	<a href="https://www.google.com/search?q=car+rental&rlz=1C1CHBF_en-GBGB869GB870&oq=car+rental&aqs=chrome..69i57j69i60l2j69i61.2224j0j9&sourceid=chrome&ie=UTF-8&safe=active&ssui=on">
		<input type="image" id="rental" src="resources/images/car.jpg"/>
	</a>

	<div id="bn1" class="banner">
		<img id="main" class="mage" src="images/la.jpg"></img>
	</div>
	
	
	<div id="br" class="myBox Relative shadow">
	
		<form action="searchFlight" method="get">
		<input class="toFrom" type="text" name="originParam" placeholder="Origin"/>
		<input class="toFrom" type="text" name="destinationParam" placeholder="Destination"/>
		<br>
		<input type="date" name="inboundDateParam" placeholder="YYYY-MM-DD" required>
		<input type="date" name="outboundDateParam" placeholder="YYYY-MM-DD" required>
		<input id="search" class="Relative shadow center" type="submit" value="Search">
		</form>
	</div>
	
	<!-- <input class="modalSection center" type="submit" value="Log In">
	
	<BUTTON id="search" class="Relative shadow">Search</BUTTON> -->
		<!-- Modal -->
	<%-- <div class="main=" id="home">
		<div id="signupModal" class="modal">
			<div class="modal-content">
				<div id="close" onclick="closeModal()">&times;</div>

		
				<sf:form action="registration" method="post" modelAttribute="userTemp">
				<sf:errors path="userName" cssClass="error" element="div" />
					<sf:label path="userName" cssClass="modalSection">Enter a username</sf:label>
					<sf:input path="userName" placeholder="Username..."/><br/>
					
					<sf:label path="firstName" cssClass="modalSection">Enter your first name</sf:label>
					<sf:input path="firstName" placeholder="first name..."/><br/>
					
					<sf:label path="lastName" cssClass="modalSection">Enter your last name</sf:label>
					<sf:input path="lastName" placeholder="last name"/><br/>
					
					<sf:label path="password" cssClass="modalSection">Create a Password</sf:label>
					<sf:input path="password" type="password" placeholder="Password..."/><br/>
					
					 <label class="modalSection" for="password">Enter your Password again</label>
					<input class="modalSection" type="password" name="passwordParamAgain" placeholder="Password..."/><br/> 
					
					<sf:label path="email" cssClass="modalSection" for="email">Enter a valid email</sf:label>
					<sf:input path="email" type="email" placeholder="Email..."/>
					
					<input class="modalSection center" type="submit" value="Submit">
					</sf:form>
					
					
				
			</div>
		</div>
	</div> --%>
	
	<!-- ModalSignin -->

	<div class="main=" id="home">
		<div id="loginModal" class="modal">
			<div class="modal-content">
				<div id="close" onclick="closeModal()">&times;</div>
				<form method="POST" action="processLogin">
					<label class="modalSection" for="username">Enter your Username</label>
					<input class="modalSection" type="text" name="usernameParam" placeholder="Username...">
					
					<label class="modalSection" for="password">Enter your Password</label>
					<input class="modalSection" type="password" name="passwordParam" placeholder="Password...">
					
					<input class="modalSection center" type="submit" value="Log In">
				</form>
			</div>
		</div>
	</div>

	
	<!--<div id="aboutUs">
		<div id="lb">
			<p>Modify a trip</p>
			<p>Cancel a trip</p>
			<p>Contact Us</p>
		</div>
		
		<div id="rb">
			<p>About Us</p>
			<p>Feedback</p>
		</div>

	</div> -->
</div> <!--End of Wrangler-->
<div class="footer">
		<div class="footer-content">
			<div class="footer-section about"> 
				<h1 class="logo-text"><span>Ali</span>-World Gate</h1>
				<p>
					YOUR Gate to the World
				</p>
				<div class="contact">
					<span><i class="fas fa-phone"></i> &nbsp; 123-456-7891</span>
					<span><i class="fas fa-envelope"></i> &nbsp; info@aliworldgate.com</span>
				</div>
			</div>
			<div class="footer-section links">
				<h2>Quick Links</h2>
				</br>
				<ul>
					<a href="#">
						<li>Modify a trip</li>
					</a>
					<a href="#">
						<li>Cancel a trip</li>
					</a>
				</ul>
			</div>
			<div class="footer-section contact-form">
				<h2>Contact Us</h2>
				<br>
				<form action="index.html" method="post">
					<input type="email" name="email" class ="text-input contact-input" placeholder="Your email address...">
					<textarea name="message" class="text-input contact-input" placeholder="Your message..."></textarea>
					<button type="submit" class="btn btn-big">
						<i class="fas fa-envelope"></i>
						Send
					</button>
				</form>
			</div>
		</div>
		<div class="footer-bottom"> 
			&copy; aliworldgate.com | Designed by Ali Hafid
		</div>
</div>

	<script src="resources/myscript.js"></script>
</body>
</html>


<!-- <div class="myBox div1">Book a hotel stay</div>
			<div class="myBox div1">Car rental</div>

<div id="br" class="myBox Relative shadow">			-->