<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>
<style>
      body {
            background-image: url("hospital2.jpg");
            background-size: cover; 
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            margin: 0;
            
             }

        h1 {
            color: #2c3e50;
            font-size:45px;
            text-align: center;
            margin-bottom: 13px;
            padding:28px;
            padding-top:75px;
            
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        li {
            display: inline;
            margin: 0 15px;
        }

        a {
            text-decoration: none;
            color: #2980b9;
            font-size:25px;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: green;
        }

        /* Add some padding and border to the body for a nicer layout */
      
</style>
</head>
<body>
    <h1>Welcome to the Hospital Management System</h1>
    <ul>
        <li><a href="add-patient.jsp">Patients</a></li>
        <li><a href="add-appointment.jsp">Appointments</a></li>
        <li><a href="add-ehr.jsp">EHR</a></li>
        <li><a href="add-billing.jsp">Billing</a></li>
        <li><a href="add-inventory.jsp">Inventory</a></li>
        <li><a href="add-staff.jsp">Staff</a></li>
    </ul>
    
</body>
</html>