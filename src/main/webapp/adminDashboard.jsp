<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <title>Admin Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e3f2fd, #bbdefb); /* Light Blue Gradient */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #2196f3;
            color: #fff;
            text-align: center;
            padding: 1em 0;
        }

        /* Navigation Bar */
        .navigation {
            background-color: #1976d2;
            padding: 10px 0;
            text-align: center;
        }

        .navigation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .navigation ul li {
            margin: 0 15px;
        }

        .navigation ul li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.1em;
        }

        .navigation ul li a.active {
            color: #ffeb3b;
        }

        /* Admin Dashboard Section */
        .dashboard-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 40px auto;
            flex-wrap: wrap;
            gap: 20px;
            flex-grow: 1;
        }

        .card {
            background: #e3f2fd;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 250px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card i {
            font-size: 3em;
            margin-bottom: 15px;
            color: #1976d2;
        }

        .card a {
            text-decoration: none;
            color: #1976d2;
            font-size: 16px;
            font-weight: bold;
        }

        .card a:hover {
            color: #0d47a1;
        }

        /* Footer */
        footer {
            margin-top: auto;
            padding: 15px;
            background: #2196f3;
            color: white;
            text-align: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Admin Dashboard</h1>
    </header>

    <!-- Navigation Bar -->
    <div class="navigation">
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="displayAllfeedback">Feedback</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="contactUs.jsp">Contact</a></li>
            <li><a href="displayAllUser">User Account</a></li>
        </ul>
    </div>

    <!-- Admin Dashboard Content -->
    <div class="dashboard-container">
        <div class="card">
            <i class="fas fa-hotel"></i>
            <a href="GetAllServlet">Hotel Management</a>
        </div>

        <div class="card">
            <i class="fas fa-users"></i>
            <a href="displayAllUser">Manage Passengers</a>
        </div>

        <div class="card">
            <i class="fas fa-calendar-check"></i>
            <a href="bookingSelection.jsp">Booking Management</a>
        </div>

        <div class="card">
            <i class="fas fa-sign-out-alt"></i>
            <a href="home.jsp">Logout</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2025 Hotel Reservation System – Admin Panel
    </footer>
</body>
</html>
