<%-- 
    Document   : add_exam
    Created on : Dec 10, 2019, 8:29:18 PM
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
            String EId=request.getParameter("id").toString();
            String EName=request.getParameter("name").toString();
            String EType=request.getParameter("type").toString();
            int EID=Integer.parseInt(EId);
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="insert into exam (ExamID,ExamName,ExamType) values("+EID+",'"+EName+"','"+EType+"')";
                db.Make_Update_Query(query);
            }
            response.sendRedirect("exam_list.jsp");
        %>
    </body>
</html>
