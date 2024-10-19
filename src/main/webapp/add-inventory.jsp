<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Inventory</title>
    <style>
    /* General body styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f2f5;
    margin: 0;
    padding: 0;
    
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form container styling */
form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    box-sizing: border-box;
 margin-left:36%;
}

/* Page Title */
h1 {
    text-align: center;
    color: #333;
    font-size: 24px;
    margin-bottom: 20px;
}

/* Labels and inputs */
label {
    display: block;
    margin-top: 10px;
    font-weight: bold;
    color: #444;
}

input[type="text"], 
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}

/* Submit button styling */
input[type="submit"] {
    background-color: #007bff;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Back link styling */
a {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
    
    </style>
</head>
<body>
    <h1>Add Inventory Item</h1>
    <form action="inventory" method="post">
        <label>Item Name:</label><br>
        <input type="text" name="itemName" required><br>
        <label>Quantity:</label><br>
        <input type="number" name="quantity" required><br>
        <input type="submit" value="Add Inventory Item">
    </form>
    <a href="inventory-list.jsp">Back to Inventory List</a>
</body>
</html>