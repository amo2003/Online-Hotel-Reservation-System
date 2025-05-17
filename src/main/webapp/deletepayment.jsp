<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Style the form container */
        .form-container {
            max-width: 300px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f2f2f2;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Style the button */
        .form-container button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 12px 20px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
        }

        /* Hover effect for the button */
        .form-container button:hover {
            background-color: #e60000;
        }

        /* Style hidden input */
        .form-container input[type="hidden"] {
            display: none;
        }
    </style>
</head>
<body>

    <div class="form-container">
      <form action="deletePaymentServlet" method="post">
      <input type="hidden" name="Id" value="<%= request.getParameter("id") %>">
      
   
    <button type="submit">Delete</button>
</form>
      
       
    </div>

</body>
</html>
