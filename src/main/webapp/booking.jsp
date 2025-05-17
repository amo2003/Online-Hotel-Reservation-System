<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking Form</title>
</head>
<body>
    <h2>Hotel Booking Form</h2>
    <form action="payment.jsp" method="get">
        <label>Name:</label><br/>
        <input type="text" name="name" required><br/><br/>

        <label>Contact Number:</label><br/>
        <input type="text" name="contact" required><br/><br/>

        <label>Location:</label><br/>
        <input type="text" name="location" required><br/><br/>

        <label>Room Type:</label><br/>
        <select name="roomType" required>
            <option value="Single">Single</option>
            <option value="Double">Double</option>
            <option value="Suite">Suite</option>
        </select><br/><br/>

        <label>Number of Guests:</label><br/>
        <input type="number" name="guests" min="1" required><br/><br/>

        <input type="submit" value="Submit and Proceed to Payment">
    </form>
</body>
</html>