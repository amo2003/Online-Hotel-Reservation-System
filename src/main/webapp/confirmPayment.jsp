<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Successful</title>
    <style>
        :root {
            --primary: #4CAF50;
            --primary-light: #81C784;
            --primary-lighter: #E8F5E9;
            --white: #FFFFFF;
            --text-dark: #212121;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.12);
            --shadow-md: 0 4px 6px rgba(0,0,0,0.1);
            --radius-md: 8px;
            --transition: all 0.3s ease;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F5F5F5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        .payment-container {
            background-color: var(--white);
            border-radius: var(--radius-md);
            box-shadow: var(--shadow-md);
            padding: 40px;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        .success-icon {
            color: var(--primary);
            font-size: 72px;
            margin-bottom: 20px;
        }

        h1 {
            color: var(--primary);
            margin-bottom: 15px;
            font-weight: 600;
        }

        p {
            color: var(--text-dark);
            margin-bottom: 30px;
            font-size: 18px;
            line-height: 1.6;
        }

        .btn-home {
            background-color: var(--primary);
            color: var(--white);
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            border-radius: var(--radius-md);
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
            box-shadow: var(--shadow-sm);
        }

        .btn-home:hover {
            background-color: #388E3C;
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .transaction-details {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #EEEEEE;
            text-align: left;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .detail-label {
            color: #757575;
            font-weight: 500;
        }

        .detail-value {
            color: var(--text-dark);
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <div class="success-icon">✓</div>
        <h1>Payment Successful!</h1>
        <p>Your transaction has been completed successfully. A receipt has been sent to your email.</p>
        
       
        
        <a href="home.jsp" class="btn-home">Return to Home</a>
    </div>
</body>
</html>