<%-- 
    Document   : voterWelcome
    Created on : 03-Apr-2023, 8:37:39 pm
    Author     : Tarun Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <%@include file="navbar.jsp" %>
    <body>
        <form action="vote" method="post">
            <h2>Please provide the required details</h2>
            <label for="voterId">Voter ID </label>
            <input name="voterId" id="voterId" type="text" required="true">
            <br/>
            <label for="parties">Choose a party</label>
            <select name="parties" id="parties" required="true">
                <option value="aap">AAP</option>            
                <option value="bjp">BJP</option>
                <option value="bsp">BSP</option>
                <option value="congress">Congress</option>
                <option value="cpi">CPI</option>
            </select>
            <br/>
            <button type="submit">Submit</button>
            <br/>
        </form>
    </body>
</html>
