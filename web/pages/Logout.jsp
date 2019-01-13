<%-- 
    Document   : Logout
    Created on : Aug 5, 2018, 10:22:38 AM
    Author     : Akash Raval <rvlaakash@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("../index.jsp");
        
        %>
    </body>
</html>
