<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
	<title>New Hotel Adding Form</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
	font-family: 'Arial', sans-serif;
    background:url('css/hotel1.jpeg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    color: #333;

  
}

.form-container {
    background-color:rgba(255, 255, 255, 0.6) ;
    padding: 30px 40px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    width: 400px;
     
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

button {
    width: 100%;
    padding: 12px;
    background-color: #0984e3;
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #74b9ff;
}

button:active {
    background-color: #40739e;
}
</style>

</head>
<body>
	<div class="form-container">
        <form action="AddNewHotelServlet" method="post">
            <h2> New Hotel Adding Form</h2>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter hotel name" required>
            
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" placeholder="Enter location" required>
            
            <label for="rooms">Number of Rooms:</label>
            <input type="number" id="rooms" name="rooms" min="1" placeholder="Enter number of rooms" required>
            
            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="" disabled selected>Select category</option>
                <option value="Budget">Budget</option>
                <option value="Luxury">Luxury</option>
                <option value="Business">Business</option>
                <option value="Family">Family</option>
            </select>
            
            <label for="price">Price per Night:</label>
            <input type="number" id="price" name="price" min="0" placeholder="Enter price" required>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>