<%-- 
    Document   : show
    Created on : Dec 10, 2019, 7:07:32 PM
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
            String id=request.getParameter("EID").toString();
            String EName="",EType="";
            int EId=Integer.parseInt(id);
            
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from exam where ExamID="+EId+"";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    EName=r.getString("ExamName");
                    EType=r.getString("ExamType");
                }
                out.print("<h1>Exam</h1>");
                out.print("<h1>"+EId+"</h1>");
                out.print("<h1>"+EName+"</h1>");
                out.print("<h1>"+EType+"</h1>");
                out.print("<a href='exam_list.jsp'>exam_list</a>");
            }
        %>
    </body>
</html>
