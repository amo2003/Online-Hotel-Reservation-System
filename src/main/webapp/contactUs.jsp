<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   

    <title>SeatReserve | Contact Us</title>
    <style>
    
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

    .contact-details, .about-details {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        justify-content: center;
        margin-top: 30px;
    }

    .contact-item, .about-item {
        flex: 1 1 250px;
        background-color: rgba(0, 0, 0, 0.3);
        padding: 20px;
        border-radius: 8px;
        text-align: center;
    }

    .contact-item h4, .about-item h4 {
        font-size: 20px;
        margin-bottom: 10px;
        color: #ff6b6b;
    }

    a {
        color: #ffdada;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    footer {
        background-color: rgba(0, 0, 0, 0.7);
        color: #eee;
        text-align: center;
        padding: 30px 20px;
        margin-top: 60px;
        backdrop-filter: blur(6px);
    }

    footer .social-links {
        list-style: none;
        display: flex;
        justify-content: center;
        margin-top: 15px;
    }

    footer .social-links li {
        margin: 0 15px;
    }

    footer .social-links li a {
        color: #ddd;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    footer .social-links li a:hover {
        color: #ff6b6b;
    }

    @media (max-width: 768px) {
        .container {
            padding: 20px;
        }

        header .container {
            flex-direction: column;
            text-align: center;
        }

        header nav ul {
            flex-direction: column;
            gap: 10px;
            margin-top: 10px;
        }
    }
</style>
    
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
                    <li><a href="inserfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp">Contact</a></li>
                    <li><a href="login.jsp">User Account</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Contact Section -->
    <section class="contact-section">
  <div class="container">
    <h2>Contact Us</h2>
    <p>If you have any questions or need help, feel free to reach out to us!</p>

    <div class="contact-details">
      <div class="contact-item">
        <h4>📍 Address</h4>
        <p>123 Main Street,<br>Colombo 01, Sri Lanka</p>
      </div>

      <div class="contact-item">
        <h4>📞 Phone</h4>
        <p>+1 234 567 8900</p>
      </div>

      <div class="contact-item">
        <h4>📧 Email</h4>
        <p><a href="mailto:support@seatreserve.com">support@luxuryhaven.com</a></p>
      </div>
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
