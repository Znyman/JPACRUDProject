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
<title>Dead of Winter</title>
</head>
<body>
	<center><h1>Dead of Winter</h1></center>
	<div class="form-group" style="padding: 0 500px;">
		<form action="GetLocation.do" method="GET">
			Find a location by ID: <input type="text" name="id" />
			<input type="submit" class="btn btn-primary" value="Show Location" />
		</form>
	</div>
	
	<hr>

	<div class="form-group" style="padding: 0 500px;">
		<h2>Add a location to database</h2>
		<form action="NewLocation.do" method="POST" id="newLocationForm">

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
			<input type="number" class="form-control" id="zombieCount" name="zombieCount" value="1" required>
			<br> 
			<input type="submit" class="btn btn-primary" value="Add Location">
		</form>
	</div>
	
	<hr>
	
	<div class="form-group" style="padding: 0 500px;">
		<form action="DeleteLocation.do" method="POST">
			Delete a location by ID: <input type="text" name="id" />
			<input type="submit" class="btn btn-primary" value="Delete Location" />
		</form>
	</div>
	
	<hr>
		
	<div class="mb-3" style="padding: 0 500px;">
	<h2>See details for all locations:</h2>
		<c:forEach var="location" items="${locations}">
			<a href="GetLocation.do?id=${location.id}">${location.name}</a><br>
		</c:forEach>
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