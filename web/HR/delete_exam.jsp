<%-- 
    Document   : delete_exam
    Created on : Dec 10, 2019, 9:36:59 PM
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
            int Id=Integer.parseInt(request.getParameter("id").toString());
            DB db=new DB();
            boolean con=db.Connection();
            if (!con)
            {
                
            }
            else
            {
                String query="delete FROM exam where ExamID="+Id+"";
                db.Make_Update_Query(query);
                response.sendRedirect("exam_list.jsp");
            }
        %>
            
    </body>
</html>
