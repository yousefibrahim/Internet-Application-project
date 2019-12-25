<%-- 
    Document   : update_exam
    Created on : Dec 10, 2019, 9:06:14 PM
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
            int Id=Integer.parseInt(request.getParameter("id").toString());
            String EName="",EId="",EType="";
            
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from exam where ExamID="+Id+"";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    EId=r.getString("ExamID");
                    EName=r.getString("ExamName");
                    EType=r.getString("ExamType");
                }
                query="delete FROM exam where ExamID="+EId+"";
                db.Make_Update_Query(query);
                out.print("<h1>Exam</h1>");
                out.print("<form action='add_exam.jsp' method='post'>");
                out.print("Exam ID  "+"<input type='text' name='id' value='"+EId+"'>");
                out.print("Exam Name  "+"<input type='text' name='name' value='"+EName+"'>");
                out.print("Exam Type  "+"<input type='text' name='type' value='"+EType+"'>");
                out.print("<input type='submit' value='update'>");
                out.print("</form>");
            }
        %>
    </body>
</html>
