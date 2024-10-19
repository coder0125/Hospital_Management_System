<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <title>Appointment List</title>
    <style>
    /* General body styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
   
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    padding-top: 40px;
}

/* Title styling */
h1 {
    text-align: center;
    color: #343a40;
    font-size: 28px;
    margin-bottom: 20px;
}

/* Add appointment link styling */
a {
    display: inline-block;
    margin-bottom: 20px;
    background-color: #007bff;
    color: white;
    padding: 10px 15px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    background-color: #0056b3;
}

/* Table styling */
table {
    width: 100%;
    max-width: 900px;
    border-collapse: collapse;
    background-color: #ffffff;
    margin-bottom: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
}

/* Table header styling */
th {
    background-color: #007bff;
    color: white;
    padding: 15px;
    font-weight: bold;
    text-align: left;
    font-size: 16px;
}

/* Table data cells styling */
td {
    padding: 12px 15px;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
    color: #555;
}

/* No appointments message styling */
td[colspan="4"] {
    text-align: center;
    color: #888;
    font-style: italic;
}

/* Alternating row colors for better readability */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Back link styling */
a:last-of-type {
    display: inline-block;
    margin-top: 20px;
    background-color: #6c757d;
    color: white;
    padding: 10px 15px;
    border-radius: 5px;
    text-decoration: none;
}

a:last-of-type:hover {
    background-color: #5a6268;
}
    
    </style>
</head>
<body>
    <h1>Appointments</h1>
    <a href="add-appointment.jsp">Add Appointment</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Patient ID</th>
            <th>Date</th>
            <th>Doctor</th>
        </tr>
       <%
            List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
            if (appointments == null || appointments.isEmpty()) {
        %>
        <tr>
            <td colspan="4">No appointments found.</td>
        </tr>
        <%
            } else {
                for (Appointment appointment : appointments) {
        %>
        <tr>
            <td><%= appointment.getId() %></td>
            <td><%= appointment.getPatientId() %></td>
            <td><%= appointment.getDate() %></td>
            <td><%= appointment.getDoctor() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>