<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
         /* Base Reset */
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
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .main-content {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 12px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            max-width: 400px;
            width: 100%;
        }

        .main-content h1 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            color: #fff;
        }

        form table {
            width: 100%;
        }

        table td {
            padding: 10px 0;
        }

        label {
            font-weight: 500;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: none;
            outline: none;
            background-color: rgba(255, 255, 255, 0.85);
            color: #333;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #34495e;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2c3e50;
        }

        .signup-link {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
            color: black;
        }

        .signup-link a {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .main-content {
                padding: 25px;
                margin: 10px;
            }

            .main-content h1 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
  
    <div class="main-content">
<h1>Login Admin Account</h1>
<form action="adminLoginServlet" method="post">
        <table>
           
            <tr>
                <td><label for="gmail">Email:</label></td>
                <td><input type="email" id="gmail" name="gmail"  required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
          
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
    </div>
 
</body>
</html>