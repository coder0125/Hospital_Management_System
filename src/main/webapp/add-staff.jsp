<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Staff</title>
    <style>
    /* General body styling */
body {
    font-family: 'Roboto', sans-serif;
    background-color: #e9ecef;
    margin: 0;
    padding: 0;
   
    justify-content: center;
    align-items: center;
    height: 100vh;
     
}

/* Form container styling */
form {
    background-color: #ffffff;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 450px;
    box-sizing: border-box;
    margin-left:34%;
}

/* Title styling */
h1 {
    text-align: center;
    color: #343a40;
    font-size: 26px;
    margin-bottom: 20px;
}

/* Labels and inputs */
label {
    font-weight: 600;
    color: #495057;
    display: block;
    margin-top: 15px;
}

input[type="text"], 
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 20px;
    border: 1px solid #ced4da;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
    background-color: #f8f9fa;
}

/* Submit button styling */
input[type="submit"] {
    background-color: #28a745;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #218838;
}

/* Back link styling */
a {
    display: block;
    text-align: center;
    margin-top: 20px;
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    text-decoration: underline;
}
    
    </style>
</head>
<body>
    <h1>Add Staff Member</h1>
    <form action="staff" method="post">
        <label>Name:</label><br>
        <input type="text" name="name" required><br>
        <label>Position:</label><br>
        <input type="text" name="position" required><br>
        <label>Salary:</label><br>
        <input type="number" step="0.01" name="salary" required><br>
        <input type="submit" value="Add Staff Member">
    </form>
    <a href="staff-list.jsp">Back to Staff List</a>
</body>
</html>