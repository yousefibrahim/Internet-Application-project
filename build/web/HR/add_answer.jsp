<%-- 
    Document   : add_answer
    Created on : Dec 15, 2019, 3:41:54 PM
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
            String AId=request.getParameter("aid").toString();
            String QId=request.getParameter("qid").toString();
            String AName=request.getParameter("aname").toString();
            String AType=request.getParameter("atype").toString();
            int AID=Integer.parseInt(AId);
            int QID=Integer.parseInt(QId);
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="insert into Answer (QID,AID,AName,correct) values("+QID+","+AID+",'"+AName+"','"+AType+"')";
                db.Make_Update_Query(query);
                response.sendRedirect("answer_list.jsp");
            }
        %>
    </body>
</html>
