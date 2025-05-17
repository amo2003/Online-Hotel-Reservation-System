<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <title>SeatReserve | About Us</title>
     <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('css/hotel1.jpeg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            line-height: 1.6;
            min-height: 100vh;
        }

          /* ===== Header Styles ===== */
    header {
        background-color: rgba(0, 0, 0, 0.3);
        color: var(--white);
        padding: 20px 0;
        position: sticky;
        top: 0;
        z-index: 1000;
        box-shadow: var(--shadow-md);
        backdrop-filter: blur(8px);
        -webkit-backdrop-filter: blur(8px);
    }

    .container {
        width: 90%;
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 15px;
    }

    header h1 {
        font-size: 24px;
        font-weight: 600;
        display: inline-block;
    }

    nav ul {
        list-style: none;
        display: flex;
        justify-content: flex-end;
    }

    nav ul li {
        margin-left: 25px;
    }

    nav ul li a {
        color: var(--white);
        text-decoration: none;
        font-weight: 500;
        padding: 8px 12px;
        border-radius: var(--radius-sm);
        transition: var(--transition);
    }

    nav ul li a:hover {
        background-color: rgba(255, 255, 255, 0.1);
        color: var(--accent);
    }

        .container {
            max-width: 1000px;
            margin: 60px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.15);
            border-radius: 12px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
            color: #fff;
        }

        h2 {
            text-align: center;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .transparent-container p {
            margin-bottom: 20px;
            font-size: 18px;
        }

        footer {
        background-color: rgba(0, 0, 0, 0.85);
        color: var(--white);
        padding: 30px 0;
        text-align: center;
        margin-top: 60px;
        backdrop-filter: blur(8px);
        -webkit-backdrop-filter: blur(8px);
    }

    .social-links {
        list-style: none;
        display: flex;
        justify-content: center;
        gap: 20px;
        margin-top: 20px;
    }

    .social-links a {
        color: var(--white);
        text-decoration: none;
        transition: var(--transition);
    }

    .social-links a:hover {
        color: var(--accent);
    }

    /* ===== Responsive Design ===== */
    @media (max-width: 768px) {
        .tablesection {
            padding: 30px;
        }

        nav ul {
            flex-direction: column;
            gap: 10px;
            margin-top: 15px;
        }

        nav ul li {
            margin-left: 0;
        }

        table {
            display: block;
            overflow-x: auto;
        }
    }

    @media (max-width: 480px) {
        .tablesection {
            padding: 20px;
        }

        h2 {
            font-size: 24px;
        }

        th, td {
            padding: 10px 5px;
            font-size: 14px;
        }

        .action-buttons {
            flex-direction: column;
            gap: 5px;
        }

        .btn {
            width: 100%;
        }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <h1>LuxuryHevan</h1>
            <nav>
                <ul>
                	<li><a href="home.jsp">Home</a></li>
                    <li><a href="log.jsp">Book a Ticket</a></li>
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="login.jsp">User Account</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- About Section -->
    <section class="about-section">
        <div class="container">
            <h2>About SeatReserve</h2>
            <div class="transparent-container"> <!-- New transparent container -->
                <p>
                    SeatReserve is a dedicated online platform for bus seat reservations. We aim to provide travelers with an easy, fast, and reliable way to book bus tickets from the comfort of their homes or while on the go. Our user-friendly interface allows you to search for available bus routes, compare schedules, and book seats in a matter of minutes.
                </p>
                <p>
                    Founded in 2024, SeatReserve was built with a mission to simplify the bus ticketing process and enhance the travel experience for passengers. Whether you're planning a quick trip to a nearby city or a long-distance journey, we make sure your seat is reserved in advance, so you can travel with peace of mind.
                </p>
                <p>
                    Our core values include customer satisfaction, transparency, and convenience. We work closely with bus operators to ensure accurate schedules and real-time availability of seats, and our 24/7 customer support is always ready to assist you with any questions or concerns.
                </p>
                <p>
                    At SeatReserve, we believe in making bus travel accessible and stress-free for everyone. Join us and experience the future of bus reservations today!
                </p>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2024 SeatReserve. All Rights Reserved.</p>
            <ul class="social-links">
                <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>
                <li><a href="https://www.twitter.com" target="_blank">Twitter</a></li>
                <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
