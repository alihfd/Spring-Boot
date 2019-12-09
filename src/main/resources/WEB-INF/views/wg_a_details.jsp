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
	<link rel="stylesheet" href="resources/mystyle_a_details.css">
</head>
<title>My Travel Agency</title>

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
	<a href="homepage">
		<input type="image" id="flight" src="resources/images/flight.png"/>
	</a>
	<a href="wg_h.html">
		<input type="image" id="hotel" src="resources/images/hotel.jpg"/>
	</a>

	<a href="http://www.google.com/">
		<input type="image" id="rental" src="resources/images/car.jpg"/>
	</a>

<h4>--------------------------------</h4>
 flight inbound: ${ flight.inboundDate }
<h4>--------------------------------</h4>
$flight destination: ${ flight.destination.city }
<h4>--------------------------------</h4>
	<div id="edit">
		<div id="criteriaTop">
			
			<div id="profile" class="miniNav">Round Trip
			<div id="dropdown-edit">
				<div class="dropLink" href="" onclick="drop(1)">Round Trip</div>
				<div class="dropLink" href="" onclick="drop(2)">One Way</div>

			</div>
		</div>
			<p class="miniNav">Passengers: 1</p>
			<p class="miniNav">Economy</p>
		</div>
		<div id="criteriaBottom">
			<p class="toFrom" type="text" name="origin" />From: ${ flight.origin.city }</p>
			<p class="toFrom" type="text" name="destination" />To: ${ flight.destination.city }</p>
			<p class="toFrom" type="date" name="inboudDate" />Depart on: ${ flight.inboundDate }</p>
			<p class="toFrom" type="date" name="outboundDate" />Return On: ${ flight.outbounDate }</p>
			<%-- <input class="toFrom" type="text" name="destination" placeholder="${ flight.destination.city }"/> --%>
			<%-- <input type="date" name="inboundDate" placeholder="${ flight.inboundDate }" required>
			<input type="date" name="outboundDate" placeholder="${ flight.outbounDate }" required> --%>
		</div>
	
	<div id="results">
		
		<div class="best shadow">
			<div class="DescriptionBelowBox">
				<p>Best Deals</p>
			</div>
			<div class="miniBestDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/AC_logo.png"></img>
					</p>
					<p class="aName">Air Canada</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
			<div class="miniBestDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/WJ_logo.jpg"></img>
					</p>
					<p class="aName">WestJet</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
			<div class="miniBestDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/P_logo.png"></img>
					</p>
					<p class="aName">Porter</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
		</div>
		
		
		<div class="otherDeals shadow">
			<div class="DescriptionBelowBox">
				<p>Other Deals</p>
			</div>
			<div class="miniOtherDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/AC_logo.png"></img>
					</p>
					<p class="aName">
						Air Canada
					</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
			<div class="miniOtherDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/P_logo.png"></img>
					</p>
					<p class="aName">Porter</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
			<div class="miniOtherDeal shadow">
				<div class="miniNav">
					<p class="subMiniNav">
						<img class="aLogos" src="resources/images/WJ_logo.jpg"></img>
					</p>
					<p class="aName">WestJet</p>
				</div>
				<p class="miniNav">Non-Stop: 1 h 33 m</p>
				<p class="miniNav">$200</p>
			</div>
		</div>
	</div>
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
	
	<script src="resources/searchScript.js"></script>
</body>
</html>