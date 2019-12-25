<%-- 
    Document   : delete_answer
    Created on : Dec 15, 2019, 3:52:17 PM
    Author     : ahmed
--%>
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
            int AId=Integer.parseInt(request.getParameter("aid").toString());
            DB db=new DB();
            boolean con=db.Connection();
            if (!con)
            {
                
            }
            else
            {
                String query="delete FROM answer where AID="+AId+"";
                db.Make_Update_Query(query);
                response.sendRedirect("answer_list.jsp");
            }
        %>
    </body>
</html>
