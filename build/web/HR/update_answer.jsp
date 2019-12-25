<%-- 
    Document   : update_answer
    Created on : Dec 15, 2019, 4:03:02 PM
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
            int AID=Integer.parseInt(request.getParameter("aid").toString());
            String AName="",Atype="";
            int QID=0;
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from answer where AID="+AID+"";
                ResultSet r=db.Make_Read_Query(query);
                if(r.next())
                {
                    QID=r.getInt("QID");
                    AName=r.getString("AName");
                    Atype=r.getString("correct");
                }
                query="delete FROM answer where AID="+AID+"";
                db.Make_Update_Query(query);
                out.print("<h1>Answer</h1>");
                out.print("<form action='add_answer.jsp' method='post'>");
                out.print("Question ID  "+"<input type='text' name='qid' value="+QID+"><br><br>");
                out.print("Answer ID  "+"<input type='text' name='aid' value="+AID+"><br><br>");
                out.print("Answer Name  "+"<input type='text' name='aname' value='"+AName+"'><br><br>");
                out.print("Answer Type  "+"<input type='text' name='atype' value='"+Atype+"'><br><br>");
                out.print("<input type='submit' value='update'>");
                out.print("</form>");
            }
        %>
    </body>
</html>
