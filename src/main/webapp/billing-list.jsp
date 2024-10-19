<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.Billing" %>
<!DOCTYPE html>
<html>
<head>
    <title>Billing List</title>
   <style>
   /* General body styling */
body {
    font-family: 'Verdana', sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
   
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    padding-top: 30px;
}

/* Page title styling */
h1 {
    text-align: center;
    color: #333;
    font-size: 28px;
    margin-bottom: 20px;
}

/* Add billing link */
a {
    display: inline-block;
    margin-bottom: 20px;
    background-color: #28a745;
    color: white;
    padding: 10px 15px;
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

/* Styling for total amount */
td:last-child {
    font-weight: bold;
    color: #007bff;
}

/* No records found message */
td[colspan="5"] {
    text-align: center;
    color: #888;
    font-style: italic;
}

/* Alternating row colors for readability */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Back to home link */
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
    <h1>Billing Records</h1>
    <a href="add-billing.jsp">Add Billing Record</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Patient ID</th>
            <th>Consultation Fee</th>
            <th>Treatment Fee</th>
            <th>Total Amount</th>
        </tr>
      <%
            List<Billing> bills = (List<Billing>) request.getAttribute("billing");
            if (bills == null || bills.isEmpty()) {
        %>
        <tr>
            <td colspan="5">No billing records found.</td>
        </tr>
        <%
            } else {
                for (Billing billing : bills) {
        %>
        <tr>
            <td><%= billing.getId() %></td>
            <td><%= billing.getPatientId() %></td>
            <td><%= billing.getConsultationFee() %></td>
            <td><%= billing.getTreatmentFee() %></td>
            <td><%= billing.getTotalAmount() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>