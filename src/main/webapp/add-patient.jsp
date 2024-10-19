<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Add Patient</title>
 <style>
 body {
    font-family: Arial, sans-serif; /* Set a default font */
    background-color: #f4f4f4; /* Light gray background for the body */
    margin: 0; /* Remove default margin */
    padding: 20px; /* Add padding around the body */
}

.container {
    background-color: #ffffff; /* White background for the form box */
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    padding: 20px; /* Padding inside the box */
    max-width: 400px; /* Max width for the form */
    margin: auto; /* Center the box */
}

h1 {
    color: #333; /* Dark gray color for the heading */
    text-align: center; /* Center the heading */
    margin-bottom: 20px; /* Space below the heading */
}

label {
    color: #555; /* Medium gray color for labels */
}

input[type="text"],
input[type="number"] {
    width: 95%; /* Full width */
    padding: 10px; /* Padding inside the input */
    margin: 10px 0; /* Space around inputs */
    border: 1px solid #ccc; /* Light gray border */
    border-radius: 4px; /* Slightly rounded corners */
}

input[type="submit"] {
    background-color: #5cb85c; /* Green background for the submit button */
    color: white; /* White text */
    border: none; /* No border */
    padding: 10px; /* Padding inside the button */
    border-radius: 4px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    width: 97%; /* Full width */
}

input[type="submit"]:hover {
    background-color: #4cae4c; /* Darker green on hover */
}

a {
    display: block; /* Make the link block-level for full width */
    text-align: center; /* Center the link text */
    margin-top: 20px; /* Space above the link */
    color: #007bff; /* Blue color for the link */
    text-decoration: none; /* Remove underline */
}

a:hover {
    text-decoration: underline; /* Underline on hover */
}
a{
  
  color: white; /* White text */
    border: none; /* No border */
    padding: 10px; /* Padding inside the button */
    border-radius: 4px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    width: 95%;
    background-color:blue;
  
}
 
 </style>
</head>
<body>

    <h1>Add Patient</h1>
    <form action="patients" method="post">
        <label>Name:</label><br>
        <input type="text" name="name" required><br>
        <label>Age:</label><br>
        <input type="number" name="age" required><br>
        <label>Address:</label><br>
        <input type="text" name="address" required><br>
        <label>Phone:</label><br>
        <input type="text" name="phone" required><br>
        <input type="submit" value="Add Patient">
    </form>
    <a href="patient-list.jsp">Back to Patient List</a>
</body>

</html>