<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Billing</title>
    <style>
     body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #34495e;
        }

        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #bdc3c7;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #219653;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #3498db;
        }
    </style>
</head>
<body>
    <h1>Add Billing Record</h1>
    <form action="billing" method="post">
        <label>Patient ID:</label><br>
        <input type="number" name="patientId" required><br>
        <label>Consultation Fee:</label><br>
        <input type="number" step="0.01" name="consultationFee" required><br>
        <label>Treatment Fee:</label><br>
        <input type="number" step="0.01" name="treatmentFee" required><br>
        <input type="submit" value="Add Billing Record">
    </form>
    <a href="billin-list.jsp">Back to Billing List</a>
</body>
</html>