<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.Patient" %>

<!DOCTYPE html>
<html>
<head>
    <title>Patient List</title>
    <style>
    /* General body styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f6f9;
    margin: 0;
    padding: 0;
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    padding-top: 40px;
}

/* Page title styling */
h1 {
    text-align: center;
    color: #333;
    font-size: 28px;
    margin-bottom: 20px;
}

/* Add Patient link styling */
a {
   
    margin-bottom: 20px;
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    background-color: #218838;
}

/* Table styling */
table {
    width: 100%;
    max-width: 1000px;
    border-collapse: collapse;
    background-color: #ffffff;
    margin-bottom: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
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
    text-align: left;
}

/* No records found styling */
td[colspan="5"] {
    text-align: center;
    color: #888;
    font-style: italic;
}

/* Alternating row colors for better readability */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Back to home link styling */
a:last-of-type {
    display: inline-block;
    margin-top: 20px;
    background-color: #6c757d;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
}

a:last-of-type:hover {
    background-color: #5a6268;
}

/* Responsive styling for smaller screens */
@media (max-width: 768px) {
    table, th, td {
        font-size: 12px;
        padding: 10px;
    }

    h1 {
        font-size: 24px;
    }

    a {
        padding: 8px 15px;
    }
}
    
    </style>
</head>
<body>
    <h1>Patients</h1>
    <a href="add-patient.jsp">Add Patient</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>Phone</th>
        </tr>
       <%
    List<Patient> patients = (List<Patient>) request.getAttribute("patients");

    if (patients == null || patients.isEmpty()) {
%>
    <tr>
        <td colspan="5">No patients found.</td>
    </tr>
<% } else {
        for (Patient patient : patients) {
%>
    <tr>
        <td><%= patient.getId() %></td>
        <td><%= patient.getName() %></td>
        <td><%= patient.getAge() %></td>
        <td><%= patient.getAddress() %></td>
        <td><%= patient.getPhoneNumber() %></td>
    </tr>
<% 
        }
    } 
%>

    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
