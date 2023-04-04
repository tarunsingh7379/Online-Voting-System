<%-- 
    Document   : contactUs
    Created on : 03-Apr-2023, 4:18:24 pm
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
         <form action="contact" method="post">
            <h2>Please enter your details</h2>
            <label for="userName">Name </label>
            <input name="userName" id="userName" type="text"required="true">
            <br/>
            <label for="pNumber">Phone No. </label>
            <input name="pNumber" id="pNumber" type="number" required="true">
            <br/>
            <label for="email">Email </label>
            <input name="email" id="email" type="email"required="true">
            <br/>
            <label for="comment">Comment </label>
            <textarea name="comment" id="comment" type="text"></textarea>
            <br/>
            <button type="submit">Submit</button>
            <br/>
        </form>
    </body>
</html>
