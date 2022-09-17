<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
<title>Registrations</title>
</head>
<body>
<h1><center><U><EM>Student's Registered</EM></U></center></h1>
<a href="addRegistration" class="btn btn-primary">Add New Registration</a><br>
	<table border="1" class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col" width="5%">ID</th>
				<th scope="col" width="35%">NAME</th>
				<th scope="col" width="20%">DEPARTMENT</th>
				<th scope="col" width="20%">COUNTRY</th>
				<th scope="col" width="20%">ACTIONS</th>
			</tr>
		</thead>
		<c:forEach items="${Students}" var="stud">
		<tr>
			<th scope="row"><c:out value="${stud.id}" /></th>
			<td><c:out value="${stud.name}" /></td>
			<td><c:out value="${stud.department}" /></td>
			<td><c:out value="${stud.country}" /></td>
			<td>
				<a href="updateDetails?id=${stud.id}" class="btn btn-success">Update</a>
				<a href="deleteDetails?id=${stud.id}" class="btn btn-danger">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>