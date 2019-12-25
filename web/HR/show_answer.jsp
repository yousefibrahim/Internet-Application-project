<%-- 
    Document   : show_answer
    Created on : Dec 15, 2019, 3:55:54 PM
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
            String id=request.getParameter("AID").toString();
            String AName="",Atype="",QID="";
            int AID=Integer.parseInt(id);
            
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from answer where AID="+AID+"";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    QID=r.getString("QID");
                    AName=r.getString("AName");
                    Atype=r.getString("correct");
                }
                out.print("<h1>Answer</h1>");
                out.print("<h1>"+QID+"</h1>");
                out.print("<h1>"+AID+"</h1>");
                out.print("<h1>"+AName+"</h1>");
                out.print("<h1>"+Atype+"</h1>");
                out.print("<a href='answer_list.jsp'>answer_list</a>");
            }
        %>
    </body>
</html>
