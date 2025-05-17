<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Details</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background: url('css/hotel3.jpeg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    color: #333;
    flex-direction: column;
}

.form-container {
    background-color: rgba(255, 255, 255, 0.8);
    padding: 30px 40px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    width: 400px;
    margin-bottom: 30px;
}

h2 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #2d3436;
    text-align: center;
}

label {
    margin-bottom: 8px;
    display: block;
    font-weight: bold;
}

input, select {
    width: 100%;
    padding: 12px;
    margin: 8px 0 15px;
    border-radius: 8px;
    border: 1px solid #b2bec3;
    font-size: 16px;
    transition: all 0.3s ease;
}

input:focus, select:focus {
    border-color: #0984e3;
    outline: none;
    box-shadow: 0 0 5px rgba(9, 132, 227, 0.5);
}

.button-group {
    display: flex;
    gap: 8px; /* Space between buttons */
}

.update, .delete {
    flex: 1; /* Ensure equal button width */
    margin: 0; /* Remove any extra margin */
}

.update {
    background-color: #27ae60;
    color: white;
}

.delete {
    background-color: #e74c3c;
    color: white;
}

.update:hover {
    background-color: #2ecc71;
}

.delete:hover {
    background-color: #c0392b;
}

.add-hotel-button {
    display: inline-block;
    padding: 12px 20px;
    margin: 15px 0;
    background-color: #0984e3; /* Light blue */
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.add-hotel-button:hover {
    background-color: #74b9ff; /* Lighter blue */
    transform: scale(1.05);
}

.add-hotel-button:active {
    background-color: #40739e; /* Darker blue */
    transform: scale(0.98);
}



/* Table Styling */
.table-container {
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    width: 80%;
    margin-top: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 12px;
    text-align: left;
    border: 1px solid #ddd;
}

th {
    background-color: #0984e3;
    color: #fff;
}

tr:hover {
    background-color: #f1f1f1;
}

</style>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="table-container">
<h2>Hotels</h2>

<a href="AddNewhotel.jsp" class="add-hotel-button">Add New Hotel</a>

<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Location</th>
		<th>Number Of Rooms</th>
		<th>Category</th>
		<th>Price</th>
		<th>Action</th>
		
		
	</tr>
	<c:forEach var="hotel" items ="${allHotels }">
	<tr>
		<td>${hotel.id }</td>
		<td>${hotel.name }</td>
		<td>${hotel.location }</td>
		<td>${hotel.rooms }</td>
		<td>${hotel.category }</td>
		<td>${hotel.price }</td>
		<td>
			<div class="button-group">
        	<a href="update.jsp?id=${hotel.id}&name=${hotel.name}&location=${hotel.location}&rooms=${hotel.rooms}&category=${hotel.category}&price=${hotel.price}">
            <button class="update">Update</button>
        	</a>
        	<form action="DeleteHotelServlet" method="post" style="display: inline;">
            <input type="hidden" name="id" value="${hotel.id}">
            <button class="delete">Delete</button>
        	</form>
    		</div>
	    </td>
	    
	 
		
	</tr>
	</c:forEach>
		
</table>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>