<%-- 
    Document   : Server
    Created on : Dec 15, 2019, 8:10:46 PM
    Author     : M_H
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            DB conn =new DB();
            conn.Connection();
            String Query="select Cemail from candidate";
            ResultSet RS = null;
            RS=conn.Make_Read_Query(Query);
            while(RS.next())
                {
            String emaildb=RS.getString("Cemail");
            if(email==emaildb)
            {
                response.sendRedirect("signup.jsp");
            }
                }
        %>
    </body>
</html>
