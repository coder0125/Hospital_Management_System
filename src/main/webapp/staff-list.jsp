<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.Staff" %>

<!DOCTYPE html>
<html>
<head>
    <title>Staff List</title>
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

/* Add Staff link styling */
a {
    display: inline-block;
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
td[colspan="4"] {
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
    <h1>Staff Members</h1>
    <a href="add-staff.jsp">Add Staff Member</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Position</th>
            <th>Salary</th>
        </tr>
        <%
            // Retrieve the list of staff members from the request attribute
            List<Staff> staffMembers = (List<Staff>) request.getAttribute("staffMembers");

            // Check if the list is not null to avoid NullPointerException
            if (staffMembers != null) {
                for (Staff staff : staffMembers) {
        %>
        <tr>
            <td><%= staff.getId() %></td>
            <td><%= staff.getName() %></td>
            <td><%= staff.getPosition() %></td>
            <td><%= staff.getSalary() %></td>
        </tr>
        <% 
                } 
            } else { 
        %>
        <tr>
            <td colspan="4">No staff members found.</td>
        </tr>
        <% 
            } 
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
