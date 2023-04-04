<%-- 
    Document   : index
    Created on : 01-Apr-2023, 3:24:23 pm
    Author     : Tarun Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
        <link rel="stylesheet" href="styles.css" >
    </head>
    <%@include file="navbar.jsp" %>
    <body>
        <form action="voterLogin" method="post">
            <h2>Enter your voter card number</h2>
            <label for="voterId">Voter ID </label>
            <input name="voterId" id="voterId" type="text" required="true">
            <br/>
            <button type="submit">Login</button>
            <br/>
            <a href="adminLogin.jsp">Admin</a>
        </form>
    </body>
</html>
