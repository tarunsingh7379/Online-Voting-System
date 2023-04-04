<%-- 
    Document   : checkResult
    Created on : 03-Apr-2023, 5:56:08 pm
    Author     : Tarun Singh
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
        <link rel="stylesheet" href="styles.css">
        
        <%
        
            Integer votes[] = new Integer[100];
            Class.forName("com.mysql.cj.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdb","root","admin");
            String query = "select party, count(party) as cnt from votes group by party";
            PreparedStatement st = con.prepareStatement(query);
            ResultSet rs = st.executeQuery(query);
            
            int i = 0;
            while(rs.next()){
                int temp = Integer.valueOf(rs.getString("cnt"));
                votes[i] = temp-1;
                i++;
            }
        %>
        
    </head>
     <%@include file="adminNavbar.jsp" %>
    <body>
        <table id="table">
            <tr>
                <th>Parties</th>
                <th>Names</th>
                <th>Votes</th>
            </tr>
            <tr>
                <td>
                    <img class="partyImg" src="https://th.bing.com/th?id=OIP.Z9yclv11oXD2X8VVogjG-gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="Aam Admi Party">
                </td>
                <td>Aam Admi Party</td>
                <td><%=votes[0]%></td>
            </tr>
            <tr>
                <td>
                    <img class="partyImg" src="data:image/jpeg;base64,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" alt="BJP">
                </td>
                <td>BJP</td>
                <td><%=votes[1]%></td>
            </tr>
            <tr>
                <td>
                    <img class="partyImg" src="https://th.bing.com/th?id=OIP.R4keI4uhhGjFYwmQGgl6-AHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="BSP">
                </td>
                <td>BSP</td>
                <td><%=votes[2]%></td>
            </tr>
            <tr>
                <td>
                    <img class="partyImg" src="https://th.bing.com/th?id=OIP.CUwTHhdJGUE1AtxVsxNcigHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="Congress">
                </td>
                <td>Congress</td>
                <td><%=votes[3]%></td>
            </tr>
            <tr>
                <td>
                    <img class="partyImg" src="https://th.bing.com/th?id=OIP.aGAFjFOymtnXefWdc9jmlwHaHa&w=249&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="CPI">
                </td>
                <td>CPI</td>
                <td><%=votes[4]%></td>
            </tr>
        </table>
    </body>
</html>
