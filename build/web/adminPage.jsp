<%-- 
    Document   : adminPage
    Created on : 03-Apr-2023, 5:42:18 pm
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
         <form action="test" method="post">
            <h2>Welcome Admin</h2>
            <a href="register.jsp">Register</a>  
            <a href="checkResult.jsp">Check Results</a>
        </form>
    </body>
</html>
