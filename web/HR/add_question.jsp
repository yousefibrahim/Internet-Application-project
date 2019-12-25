<%-- 
    Document   : add_question
    Created on : Dec 15, 2019, 2:50:03 PM
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
            int qid=Integer.parseInt(request.getParameter("qid").toString());
            String qname=request.getParameter("qname").toString();
            String eid=request.getParameter("eid").toString();
            DB db=new DB();
            boolean con=db.Connection();
            if (!con)
            {
                response.sendRedirect("addquestion.html");
            }
            else
            {
                String query="insert into question(QID,QName,ExamID) values("+qid+",'"+qname+"','"+eid+"')";
                db.Make_Update_Query(query);
                response.sendRedirect("question_list.jsp");
            }
        %>
    </body>
</html>
