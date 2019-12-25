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
        <script type="text/javascript">
            function checkForm(form)
{
    if (form.id.value == "") {
        document.getElementById("lab").innerHTML="Error: UserID cannot be blank!";
        document.getElementById("labid").innerHTML="*";
        document.getElementById("labpass").innerHTML="";
        return false;
    }
    else if (form.password.value == "") {
        document.getElementById("lab").innerHTML="Error: UserPassword cannot be blank!";
        document.getElementById("labid").innerHTML="";
        document.getElementById("labpass").innerHTML="*";
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
            <h1 class="header">SOLVE YOUR QUIZE</h1>
            
            <form action="control" method="post" onsubmit="return checkForm(this)" >
            <h1 class="h1">Log in</h1>
            <table class="table">
            <tr>
            <label id="lab">
                
            </label>
            <tr><td><label id="labid">
                <%
                    if(request.getParameter("value")!=null)
                   out.print( request.getParameter("value") );
                %>
                    </label>
            <input type="text" name="email" placeholder="Enter-Email" /></td></tr>
            
            <tr><td><label id="labpass"></label><input type="password" name="password" placeholder="Enter-Password" /></td></tr>
            
            <tr>
                <td><input class="button" type="submit"  value="Log in"/></td> 
            </tr>
        </form>
            <tr>
                <td><a class="signup" href="signup.jsp">Sign up</a></td> 
            </tr>
            </table>
        </div>
        <footer class="footer">
            <p style="text-align: center; padding: 20px;color: white">@copy writer saved</p>
        </footer>
    </body>
</html>
