<%@page import="com.javatpoint.DB"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css.css" rel="stylesheet" type="text/css" />
        
        <style>
            
        </style>
        
    </head>
    <body>
        <div class="navbar">
            <span class="gradience">HR-System</span>
            
            <ul class="list"> 
                <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            HttpSession s=  request.getSession(true);
            s.setAttribute("HRemail", email);s.setAttribute("HRpassword", password);
            String HRemial = request.getParameter("email");
            String HRpassword = request.getParameter("password");
            //out.print("<p><p/>"+email+password);
            DB conn =new DB();
            if(conn.Connection())
            {
                //out.print("<p>connected1<p/>");
            }
            String query_id="select HRMail and HRPassword from hr where HRMail='"+HRemial+"' and HRPassword ='"+HRpassword+"'";
            
            conn.Make_Read_Query(query_id);
             ResultSet rs=conn.Make_Read_Query(query_id);
            if(rs.next())
            {
                //response.sendRedirect("board.jsp?value=Wrong email");
                
            }
            else
            {
                response.sendRedirect("HR_login.jsp?value=Wrong email");
            }
            %>
        <div class="container">
            <div>
                <h1 style="color:#6fc1a5">HR Dashboard</h1>
                <ul class="lists">
                    <li><a href="exam_list.jsp">List of Exams</a></li>
                    <li><a href="question_list.jsp">List of Question </a></li>
                    <li><a href="answer_list.jsp">List of Answers</a></li>
                    <li><a href="makeexam.html">Make Exam</a></li>
                </ul>
            </div>
            
        </div>
        <footer class="footer">
            <p style="text-align: center; padding: 20px;color: white">@copy writer saved</p>
        </footer>
    </body>
</html>
