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
	<link rel="stylesheet" href="mystyle_h.css">
</head>
<title>World Gate</title>







<body>

	<div id="menuHeader" class="fullBox">
		<div id="signup" class="menuButton" onclick="showModal()">Sign Up</div>
		<div id="profile" class="menuButton">Profile
			<div id="dropdown-content">
				<div class="dropLink" href="" onclick="drop(1)">My Profile</div>
				<div class="dropLink" href="" onclick="drop(2)">My Trips</div>
				<div class="dropLink" href="" onclick="drop(3)">My Loyalty Program</div>
				<div class="dropLink" href="" onclick="drop(4)">Settings</div>
			</div>
		</div>

	</div>
<div class="wrapper">
	<a href="wg_a.html">
		<input type="image" id="flight" src="images/flight.png"/>
	</a>
	<a href="wg_h.html">
		<input type="image" id="hotel" src="images/hotel.jpg"/>
	</a>

	<a href="https://www.google.com/search?q=car+rental&rlz=1C1CHBF_en-GBGB869GB870&oq=car+rental&aqs=chrome..69i57j69i60l2j69i61.2224j0j9&sourceid=chrome&ie=UTF-8&safe=active&ssui=on">
		<input type="image" id="rental" src="images/car.jpg"/>
	</a>
	<div id="bn1" class="banner">
		<img class="mage" src="images/h2.png"></img>
	</div>

	<div id="br" class="myBox Relative shadow">
		<form action="/html/tags/html_form_tag_action.cfm" method="get">
		<input id="destination" type="text" name="destination" placeholder="Destination's city, zip code, address"/>
		</br>
		<input type="date" placeholder="Check In: YYYY-MM-DD" required>
		<input type="date" placeholder="Check Out: YYYY-MM-DD" required>
		</form>
		<BUTTON id="search" class="Relative shadow">Search</BUTTON>
	</div>
	
	
			<!-- Modal -->
	<div class="main=" id="home">
		<div id="loginModal" class="modal">
			<div class="modal-content">
				<div id="close" onclick="closeModal()">&times;</div>
				<form action="">
					<label class="modalSection" for="username">Create a Username</label>
					<input class="modalSection" type="text" name="username" placeholder="Username...">
					
					<label class="modalSection" for="password">Create a Password</label>
					<input class="modalSection" type="text" name="password" placeholder="Password...">
					
					<label class="modalSection" for="password">Enter your Password again</label>
					<input class="modalSection" type="text" name="password" placeholder="Password...">
					<input class="modalSection center" type="submit" value="Submit">
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
	<div style="width: 100%; height:300px;">
	</div>
</div><!--End of Wrangler-->
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
				<br>
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
	<script src="myscript.js"></script>
</body>
</html>


<!-- <div class="myBox div1">Book a hotel stay</div>
			<div class="myBox div1">Car rental</div> -->