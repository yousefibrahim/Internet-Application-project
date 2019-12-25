<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
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
        <link href="css.css" rel="stylesheet" type="text/css" />
        
        <style>
            
        </style>
        
    </head>
    <body>
        <div class="navbar">
            <span class="gradience"><%/*out.print(session.getAttribute("CName").toString()); */%></span>
            
            <ul class="list"> 
                <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>
        <div class="container">
            <%
            String CID= session.getAttribute("CID").toString();
            DB conn =new DB();
            if(conn.Connection())
            {
               // out.print("<p>connected1<p/>");
            }
            String query="select CID from candidate_exam where CID ='"+CID+"'";
            boolean flag=false;
            conn.Make_Read_Query(query);
             ResultSet rs=conn.Make_Read_Query(query);
            if(rs.next())
            {
                out.print("TRUE");
                flag=true;
            }
            if(flag)
            {
                out.print("<p>Your CV are accepted</p>");
                out.print("<a href='exams_link'>Exam Link</a>");
                
            }
            else
            {
                out.print("<p>Wait for response (Checking process for your CV are suitable or Not)</p>"
                        + "<p style='padding-left: 150px;'>Check your email</p>");
            }
            %>
            
            
        </div>
        <footer class="footer">
            <p style="text-align: center; padding: 20px;color: white">@copy writer saved</p>
        </footer>
    </body>
</html>
