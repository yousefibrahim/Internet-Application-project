<%-- 
    Document   : answer_list
    Created on : Dec 22, 2019, 4:04:13 PM
    Author     : ahmed
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javatpoint.answer"%>
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
            ArrayList<answer> Ans_list=new ArrayList();
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from answer";
                ResultSet r=db.Make_Read_Query(query);
                while(r.next())
                {
                    answer answers=new answer();
                    answers.QID=Integer.parseInt(r.getString(4).toString());
                    answers.AID=Integer.parseInt(r.getString(1).toString());
                    answers.AName=r.getString(2).toString();
                    answers.correct =Integer.parseInt(r.getString(3).toString());
                    Ans_list.add(answers);
                }
            }
        %>
        <table border="1">
            <tr><th>AID</th><th>QID</th><th>AName</th><th>Correct</th><th>Delete</th><th>update</th><th>Show</th><th>Insert</th><tr>
        <%for(int i=0;i<Ans_list.size();i++)
        {%>
        <tr>
            
            <td><%=Ans_list.get(i).AID%></td><td><%=Ans_list.get(i).QID%></td><td><%=Ans_list.get(i).AName%></td><td><%=Ans_list.get(i).correct%></td><td><a href="delete_answer.jsp?aid=<%=Ans_list.get(i).AID%>">Delete</a></td><td><a href="update_answer.jsp?aid=<%=Ans_list.get(i).AID%>">Update</a></td><td><a href="show_answer.jsp?AID=<%=Ans_list.get(i).AID%>">Show</a></td><td><a href="addanswer.html">Inset</a></td>
        </tr>
        <%}%>
        </table>
    </body>
</html>
