<%-- 
    Document   : logout
    Created on : 03-Apr-2023, 9:32:31 pm
    Author     : Tarun Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession ssn = request.getSession();
            ssn.removeAttribute("name");
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
