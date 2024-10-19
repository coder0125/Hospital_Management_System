<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.EHR" %>

<!DOCTYPE html>
<html>
<head>
    <title>EHR List</title>
    <style>
    /* General body styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    display: flex;
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

/* Add EHR Record link */
a {
    display: inline-block;
    margin-bottom: 20px;
    background-color: #17a2b8;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    background-color: #138496;
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
    word-wrap: break-word;
    max-width: 300px;
}

/* No records message styling */
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
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
}

a:last-of-type:hover {
    background-color: #5a6268;
}
    
    </style>
</head>
<body>
    <h1>EHR Records</h1>
    <a href="add-ehr.jsp">Add EHR Record</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Patient ID</th>
            <th>Medical History</th>
            <th>Prescription</th>
        </tr>
      <%
            List<EHR> records = (List<EHR>) request.getAttribute("ehr");
            if (records == null || records.isEmpty()) {
        %>
        <tr>
            <td colspan="4">No EHR records found.</td>
        </tr>
        <%
            } else {
                for (EHR record : records) {
        %>
        <tr>
            <td><%= record.getId() %></td>
            <td><%= record.getPatientId() %></td>
            <td><%= record.getMedicalHistory() %></td>
            <td><%= record.getPrescription() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>