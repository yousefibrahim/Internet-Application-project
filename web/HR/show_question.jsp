<%-- 
    Document   : showquestion
    Created on : Dec 15, 2019, 2:59:09 PM
    Author     : ahmed
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
            String qid=request.getParameter("qid").toString();
            int QID=Integer.parseInt(qid);
            String QName="",ExamID="";
            
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from question where QID='"+QID+"'";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    QName=r.getString("QName");
                    ExamID=r.getString("ExamID");
                }
                out.print("<h1>Question</h1>");
                out.print("<h1>"+QID+"</h1>");
                out.print("<h1>"+QName+"</h1>");
                out.print("<h1>"+ExamID+"</h1>");
                out.print("<a href='question_list.jsp'>question_list</a>");
            }
        %>
    </body>
</html>
