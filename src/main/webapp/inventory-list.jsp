<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hospital.model.Inventory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inventory List</title>
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

/* Add Inventory link */
a {
    display: inline-block;
    margin-bottom: 20px;
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    margin-left:43%;
}

a:hover {
    background-color: #218838;
}

/* Table styling */
table {
    width: 100%;
    max-width: 800px;
    border-collapse: collapse;
    background-color: #ffffff;
    margin-bottom: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
    margin-left:24%;
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
td[colspan="3"] {
    text-align: center;
    color: #888;
    font-style: italic;
}

/* Alternating row colors for better readability */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Back to home link */
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
    <h1>Inventory Items</h1>
    <a href="add-inventory.jsp">Add Inventory Item</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Item Name</th>
            <th>Quantity</th>
        </tr>
    <%
            List<Inventory> items = (List<Inventory>) request.getAttribute("inventory");
            if (items == null || items.isEmpty()) {
        %>
        <tr>
            <td colspan="3">No inventory items found.</td>
        </tr>
        <%
            } else {
                for (Inventory item : items) {
        %>
        <tr>
            <td><%= item.getId() %></td>
            <td><%= item.getItemName() %></td>
            <td><%= item.getQuantity() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</body>
</html>