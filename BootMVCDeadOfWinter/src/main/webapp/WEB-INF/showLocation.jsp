<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Show Location</title>
</head>
<body>
	<div class="mb-3" style="padding: 0 500px;">
		<c:if test="${not empty updateMessage}">
			<h1>${updateMessage}</h1>
			<br>
		</c:if>
	</div>
	<div class="mb-3" style="padding: 0 500px;">
		<c:choose>
			<c:when test="${not empty location}">
				<h2>${location.name}</h2>
				<br>
				<p>The ID for this location is: ${location.id}.</p>
				<br>
				<c:if test="${not empty location.weapon}">
					<p>${location.weapon} is at this location.</p>
					<br>
				</c:if>
				<c:if test="${not empty location.book}">
					<p>${location.book} book is at this location.</p>
					<br>
				</c:if>
				<c:if test="${not empty location.medicalSupply}">
					<p>${location.medicalSupply} is at this location.</p>
					<br>
				</c:if>
				<c:if test="${not empty location.tool}">
					<p>${location.tool} is at this location</p>
					<br>
				</c:if>
				<c:if test="${not empty location.food}">
					<p>${location.food} is at this location</p>
					<br>
				</c:if>
				<p>There are ${location.zombieCount} zombies at this location</p>
				
				<div class="form-group">
					<h2>Update this location in the database</h2>
					<form action="UpdateLocation.do" method="POST" id="updateLocationForm">
					
			    		<input type="hidden" name="id" value="${location.id}">
			
						<label for="name"><em>What is the name of this location?</em></label>
						<input type="text" class="form-control" id="name" name="name" value="Library" required>
						<br>
						<label for="weapon"><em>What weapon is at this location, if any?</em></label>
						<input type="text" class="form-control" id="weapon" name="weapon">
						<br> 
						<label for="book"><em>What book is at this location, if any?</em></label>
						<input type="text" class="form-control" id="book" name="book">
						<br>
						<label for="medicalSupply"><em>What medical supplies are at this location, if any?</em></label>
						<input type="text" class="form-control" id="medicalSupply" name="medicalSupply">
						<br> 
						<label for="tool"><em>What tool is at this location, if any?</em></label>
						<input type="text" class="form-control" id="tool" name="tool">
						<br>
						<label for="food"><em>What kind of food is at this location, if any?</em></label>
						<input type="text" class="form-control" id="food" name="food">
						<br> 
						<label for="zombieCount"><em>How many zombies are at this location?</em></label>
						<input type="text" class="form-control" id="zombieCount" name="zombieCount" value="1" required>
						<br> 
						<input type="submit" class="btn btn-primary" value="Update Location">
					</form>
				</div>
			</c:when>
			<c:otherwise>
				<h2>Location not found.</h2>
			</c:otherwise>
		</c:choose>
	</div>
	
	<hr>
	
	<div class="form-group" style="padding: 0 500px;">
		<form action="DeleteLocation.do" method="POST">
			Delete a location by ID: <input type="text" name="id" />
			<input type="submit" class="btn btn-primary" value="Delete Location" />
		</form>
	</div>
	
	<hr>
	<div class="form-group" style="padding: 0 500px;">
		<form action="/" method="GET">
			<input type="submit" class="btn btn-primary" value="Return to the home page" />
		</form>
	</div>
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	
</body>
</html>