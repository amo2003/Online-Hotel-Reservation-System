<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
        /* Modern CSS with variables */
        :root {
            --primary: #4CAF50;
            --primary-dark: #388E3C;
            --accent: #FFC107;
            --text-dark: #212121;
            --text-light: #757575;
            --white: #ffffff;
            --gray-light: #f5f5f5;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.12);
            --shadow-md: 0 4px 6px rgba(0,0,0,0.1);
            --radius-sm: 4px;
            --radius-md: 8px;
            --transition: all 0.3s ease;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;            
            background-color: var(--gray-light);
            color: var(--text-dark);
            line-height: 1.6;
            margin: 0;
            padding: 0;
              font-family: 'Arial', sans-serif;
    background: url('css/hotel1.jpeg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    color: #fff;
        }

        .container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: var(--white);
            border-radius: var(--radius-md);
            box-shadow: var(--shadow-md);
        }

        .confirmation-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .confirmation-header h1 {
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .confirmation-icon {
            font-size: 4rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .booking-details {
            margin: 2rem 0;
            padding: 1.5rem;
            background-color: var(--gray-light);
            border-radius: var(--radius-sm);
        }

        .detail-row {
            display: flex;
            margin-bottom: 1rem;
        }

        .detail-label {
            flex: 0 0 150px;
            font-weight: 600;
            color: var(--text-light);
        }

        .detail-value {
            flex: 1;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin-top: 2rem;
        }

        .btn {
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: var(--radius-sm);
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
            display: inline-block;
        }

        .btn-primary {
            background-color: var(--primary);
            color: var(--white);
        }

        .btn-primary:hover {
            background-color: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: var(--shadow-sm);
        }

        .btn-outline {
            background-color: transparent;
            color: var(--primary);
            border: 1px solid var(--primary);
        }

        .btn-outline:hover {
            background-color: rgba(76, 175, 80, 0.1);
        }

        @media (max-width: 768px) {
            .container {
                margin: 1rem;
                padding: 1.5rem;
            }
            
            .action-buttons {
                flex-direction: column;
            }
            
            .btn {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="confirmation-header">
            <div class="confirmation-icon">✓</div>
            <h1>Booking Confirmed!</h1>
            <p>Please review your booking details below</p>
        </div>

      

        <div class="action-buttons">
            <a href="payment.jsp?bookingId=${booking.id}" class="btn btn-primary">
                Proceed to Payment
            </a>
            <a href="bookingSelection.jsp" class="btn btn-outline">
                Modify Booking
            </a>
        </div>
    </div>
</body>
</html>