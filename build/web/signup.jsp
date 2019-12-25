<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <style>
            body
            {
                background-image: url("images/cq5dam.web.512.341.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                padding: 0px;
                margin: 0px;
            }
            .container
            {
                padding-left: 450px;
                padding-top: 100px;
                
            }
            .header
            {
                color: #6fc1a5;
            }
            table
            {
                margin-left:  25px;
            }
            input
            {
                width: 200px;
                height: 20px;
            }
            form
            {
                background-color: #393e46;
                width: 500px;
                height: 320px;
                padding-top: 10px;
                border-radius: 10px;
                
            }
            .h1
            {
                color: #6fc1a5;
                text-align: center;
            }
            #lab,#labid,#labpass,#star_c,#star_e,#star_p
            {
                padding: 2px;
                color: #ef4339;
            }
            .label
            {
                padding: 2px;
                color: white;
            }
            .button
            {
                width: 90px;
                cursor: pointer;
                margin-left:80px;
                margin-top:20px; 
            }
            .signup
            {
                width: 90px;
                color: white;
                cursor: pointer;
                margin-left:210px;
                margin-top:20px;
            }
            
            input
            {
                border-bottom-color: #88c0ad80;
            }
            .navbar
            {
                margin: 0px;
                background-color: #393e46;
                padding-left: 50px;
                height: 50px;
                
            }
            .gradience
            {
                float: left;
                font-size: 30px;
                font-family: monospace;
                color:#6fc1a5;
                margin-top:10px;
                overflow: hidden;
                width: 50%;
                
            }
            .list
            {
                list-style: none;
                float: right;
                font-size: 25px;
                padding: 0px;
                margin: 0px;
            }
            .list li 
            {
               padding-top: 10px ;
               padding-right: 30px;
            }
            .selectlabel
            {
                padding-right: 55px;
                width: auto;
            }
            .list li a
            {
                text-decoration: none;
                color: #6fc1a5;
            }
            .login
            {
                text-align: center;
                padding-left: 150px;
            }
            .clear
            {
                clear: both;
            }
            .footer
            {
                margin-top: auto;
                background-color: #393e46;
                height: 80px;
                position: fixed;
                width: 100%;
                left: 0;
                bottom: 0;
                
            }
            #isE
            {
                color: white;
            }
        </style>
        <script type="text/javascript">
        function checkExist(){
                var xmlhttp = new XMLHttpRequest();
                var username = document.forms["regF"]["name"].value;
                var url = "exists.jsp?username="+ username;
                xmlhttp.onreadystatechange = function(){
                    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                        if(xmlhttp.responseText == "\n\n\n\n\nUser already exists")
                            document.getElementById("isE").style.color = "red";
                        else
                            document.getElementById("isE").style.color = "green";
                        document.getElementById("isE").innerHTML = xmlhttp.responseText;
                    }
                    
                };
                try{
                xmlhttp.open("GET",url,true);
                xmlhttp.send();
            }catch(e){alert("unable to connect to server");
            }
            }
function checkForm(form)
{
    if (form.name.value == "") {
        document.getElementById("lab").innerHTML="Error: important filed cannot be blank!";
        document.getElementById("labid").innerHTML="*";
        return false;
    }
    else if (form.email.value == "") {
        document.getElementById("lab").innerHTML="Error: important filed cannot be blank!";
        document.getElementById("labid").innerHTML="";
        document.getElementById("star_e").innerHTML="*";
        return false;
    }
    else if (form.password.value == "") {
        document.getElementById("lab").innerHTML="Error: important filed cannot be blank!";
        document.getElementById("star_e").innerHTML="";
        document.getElementById("star_p").innerHTML="*";
        return false;
    }
    else return true;
    
}
        </script>
    </head>
    <body>
        
        <div class="navbar">
            <span class="gradience">HR-System</span>
            <ul class="list">
                <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>
        <div class="container">
            <form action="info_cand" method="post" name="regF" onsubmit="return checkForm(this)" >
            <h1 class="h1">Sign up</h1>
            <table class="table">
            <tr>
            <label id="lab">
            </label>
            </tr>
            <tr>
                <td><label class="label">Your Name </label>
                </td>
                <td><label id="labid"></label><input type="text" name="name" onblur="return checkExist()" /></td>
                <td><label id="star_n"> </label><span id="isE"></span></td>
            </tr>
            
            <tr>
                <td><label class="label">Your Email </label></td>
                        <td><label id="labid">
                    <%
                    if(request.getParameter("value")!=null)
                   out.print( request.getParameter("value") );
                %>
                    </label><input type="text" name="email" /></td>
                <td><label id="star_e"> </label></td>
            </tr>
            <tr>
                <td><label class="label">Your Password </label></td>
                <td><label id="labid"></label><input type="text" name="password" /></td>
                <td><label id="star_p"> </label></td>
            </tr>
            
            <tr>
                <td><label class="label">Your Phone </label></td>
                <td><label class="label"></label><input type="number" name="phone"/></td>
                <td><label id="star_ph"> </label></td>
            </tr>
            
            
            <tr>
             <td></td> 
            
                <td colspan="2"><input class="button" type="submit"  value="Submit"/></td> 
                
            </tr>
            <tr>
                <td colspan="2"><a class="signup"   href="index.jsp">Login </a></td>
            </tr>
            </table>
        </form>
        </div>
        <footer class="footer">
            <p style="text-align: center; padding: 20px;color: white">@copy writer saved</p>
        </footer>
    </body>
</html>
