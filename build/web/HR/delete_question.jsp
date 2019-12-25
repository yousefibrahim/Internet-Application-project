<%-- 
    Document   : delete_question
    Created on : Dec 15, 2019, 3:27:59 PM
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
            int qId=Integer.parseInt(request.getParameter("qid").toString());
            DB db=new DB();
            boolean con=db.Connection();
            if (!con)
            {
                
            }
            else
            {
                String query="delete FROM question where QID="+qId+"";
                db.Make_Update_Query(query);
                response.sendRedirect("question_list.jsp");
            }
        %>
    </body>
</html>
