<%-- 
    Document   : exam_list
    Created on : Dec 22, 2019, 5:03:58 PM
    Author     : ahmed
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javatpoint.exam"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="navbar">
            <span class="gradience">HR-System</span>
        </div>
        <div class="conatainer listexam">
        <%
            ArrayList<exam> exam_list=new ArrayList();
            DB db=new DB();
            boolean con=db.Connection();
            if (con)
            {
                String query="select * from exam";
                ResultSet r=db.Make_Read_Query(query);
                while(r.next())
                {
                    exam Exam=new exam();
                    Exam.ExamID=Integer.parseInt(r.getString(1).toString());
                    Exam.ExamName=r.getString(2).toString();
                    Exam.ExamType=r.getString(3).toString();
                    exam_list.add(Exam);
                }
            }
        %>
        <table border="1">
            <tr><th>ExamID</th><th>ExamName</th><th>ExamType</th><th>Delete</th><th>update</th><th>Show</th><th>Insert</th><tr>
        <%for(int i=0;i<exam_list.size();i++)
        {%>
        <tr>
            <td><%=exam_list.get(i).ExamID%></td><td><%=exam_list.get(i).ExamName%></td><td><%=exam_list.get(i).ExamType%></td><td><a href="delete_exam.jsp?id=<%=exam_list.get(i).ExamID%>">Delete</a></td><td><a href="update_exam.jsp?id=<%=exam_list.get(i).ExamID%>">Update</a></td><td><a href="show_exam.jsp?EID=<%=exam_list.get(i).ExamID%>">Show</a></td><td><a href="addexam.html">Inset</a></td>
        </tr>
        <%}%>
        </table>
        
        </div>

    </body>
</html>
