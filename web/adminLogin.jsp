<%-- 
    Document   : adminLogin
    Created on : 03-Apr-2023, 5:30:51 pm
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
    <%@include file="navbar.jsp" %>

    <body>
        <form action="adminLogin" method="post">
            <h2>Please fill the required details</h2>
            <label for="userName">Name </label>
            <input name="userName" id="userName" type="text"required="true">
            <br/>
            <label for="password">Password </label>
            <input name="password" id="password" type="password"required="true">
            <br/>
            <button type="submit">Login</button>
            <br/>
        </form>
    </body>
</html>
