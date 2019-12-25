<%-- 
    Document   : update_question
    Created on : Dec 15, 2019, 3:15:45 PM
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
            int qId=Integer.parseInt(request.getParameter("qid").toString());
            String QName="",QId="",ExamID="";
            
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from question where QID="+qId+"";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    QId=r.getString("QID");
                    QName=r.getString("QName");
                    ExamID=r.getString("ExamID");
                }
                query="delete FROM question where QID="+qId+"";
                db.Make_Update_Query(query);
                out.print("<h1>question</h1>");
                out.print("<form action='add_question.jsp' method='post'>");
                out.print("Question ID  "+"<input type='text' name='qid' value='"+QId+"'>");
                out.print("Question Name  "+"<input type='text' name='qname' value='"+QName+"'>");
                out.print("Exam ID  "+"<input type='text' name='eid' value='"+ExamID+"'>");
                out.print("<input type='submit' value='update'>");
                out.print("</form>");
            }
        %>
    </body>
</html>
