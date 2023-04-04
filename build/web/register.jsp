<%-- 
    Document   : register
    Created on : 03-Apr-2023, 5:46:15 pm
    Author     : Tarun Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
         <link rel="stylesheet" href="styles.css">
    </head> 
    <%@include file="adminNavbar.jsp" %>
    <body>
         <form action="register" method="post">
            <h2>Please enter your details</h2>
            <label for="userName">Name </label>
            <input name="userName" id="userName" type="text" required="true">
            <br/>
            <label for="pNumber">Phone No. </label>
            <input name="pNumber" id="pNumber" type="number" required="true">
            <br/>
            <label for="email">Email </label>
            <input name="email" id="email" type="email"required="true">
            <br/>
            <label for="address">Address </label>
            <input name="address" id="address" type="text" required="true">
            <br/>
            <label for="vNumber">Voter Number </label>
            <input name="vNumber" id="vNumber" type="text" required="true">
            <br/> 
            <label for="dob">Date of Birth </label>
            <input name="dob" id="dob" type="date"required="true">
            <br/>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
