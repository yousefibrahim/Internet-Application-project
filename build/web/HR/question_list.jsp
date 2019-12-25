<%-- 
    Document   : question_list
    Created on : Dec 22, 2019, 4:56:26 PM
    Author     : ahmed
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javatpoint.question"%>
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
            ArrayList<question> Que_list=new ArrayList();
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from question";
                ResultSet r=db.Make_Read_Query(query);
                while(r.next())
                {
                    question Questions=new question();
                    Questions.QID=Integer.parseInt(r.getString(1).toString());
                    Questions.QName=r.getString(2).toString();
                    Questions.ExamID=Integer.parseInt(r.getString(3).toString());
                    Que_list.add(Questions);
                }
            }
        %>
        <table border="1">
            <tr><th>QID</th><th>QName</th><th>ExamID</th><th>Delete</th><th>update</th><th>Show</th><th>Insert</th><tr>
        <%for(int i=0;i<Que_list.size();i++)
        {%>
        <tr>
            <td><%=Que_list.get(i).QID%></td><td><%=Que_list.get(i).QName%></td><td><%=Que_list.get(i).ExamID%></td><td><a href="delete_question.jsp?qid=<%=Que_list.get(i).QID%>">Delete</a></td><td><a href="update_question.jsp?qid=<%=Que_list.get(i).QID%>">Update</a></td><td><a href="show_question.jsp?qid=<%=Que_list.get(i).QID%>">Show</a></td><td><a href="addquestion.html">Inset</a></td>
        </tr>
        <%}%>
        </table>
    </body>
</html>
