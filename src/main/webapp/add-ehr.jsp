<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add EHR</title>
    <style>
    /* General body styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
   
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Styling the form container */
form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    box-sizing: border-box;
    margin:0;
    margin-left:31%;
   
}

/* Title and form elements */
h1 {
    text-align: center;
    color: #333;
}

label {
    font-weight: bold;
    color: #555;
    margin-top: 10px;
    display: inline-block;
}

input[type="number"], 
textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/* Submit button */
input[type="submit"] {
    background-color: #28a745;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #218838;
}

/* Back link */
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
    <h1>Add EHR Record</h1>
    <form action="ehr" method="post">
        <label>Patient ID:</label><br>
        <input type="number" name="patientId" required><br>
        <label>Medical History:</label><br>
        <textarea name="medicalHistory" required></textarea><br>
        <label>Prescription:</label><br>
        <textarea name="prescription" required></textarea><br>
        <input type="submit" value="Add EHR Record">
    </form>
    <a href="ehr-list.jsp">Back to EHR List</a>
</body>
</html>