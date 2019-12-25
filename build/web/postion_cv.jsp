<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<!DOCTYPE html>

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
                width: 350px;
                height: 220px;
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
                margin-left:10px;
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
            .check_response
            {
                color: white;
            }
        </style>
        <script type="text/javascript">
            function checkForm(form)
{
    if (form.position.value == "") {
        document.getElementById("lab").innerHTML="Error: important filed cannot be blank!";
        document.getElementById("star_pos").innerHTML="*";
        return false;
    }
    else if (form.cv.value == "") {
        document.getElementById("lab").innerHTML="Error: important filed cannot be blank!";
        document.getElementById("star_pos").innerHTML="";
        document.getElementById("star_c").innerHTML="*";
        return false;
    }
    else return true;

}
        </script>
    </head>
    <body>
        <%
       /*request.getSession();
        String name=(String)session.getAttribute("name");
        out.print("<p>hello</p>");*/
        %>
        <div class="navbar">
            <span class="gradience">HR-System</span>
            
            <ul class="list"> 
                <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>
        <!-------------------------------body--------------------->
        
        <div class="container">
        <form action="info_cand" method="post" onsubmit="return checkForm(this)" >
            <h1 class="h1">Avaliable Position</h1>
        <table class="table">
            <tr>
            <label id="lab">
            </label>
            </tr>
        <tr>
                <td><label class="label">Select  Position </label></td>
                <td><select name="position">
                        <option>
            <%
            DB conn =new DB();
            conn.Connection();
            String Query="select pos_name from available_position";
            ResultSet RS = null;
            RS=conn.Make_Read_Query(Query);
            while(RS.next())
                {
            String name=RS.getString("pos_name");
            out.println("<option>"+name+"</option>");
                }
            %>
                        </option>
                    </select>
                <label id="star_pos"></label>
                </td>
                <td><label id="labid"> </label></td>
            </tr>
            <tr>
                <td><label class="label">Upload CV </label></td>
                <td><label ></label><input type="file" name="cv"/></td>
                <td><label id="star_c"> </label></td>
            </tr>
            <tr>
             <td></td> 
            
                <td colspan="2"><input class="button" type="submit"  value="Submit"/></td> 
                
            </tr>
            
        </form>
            <tr>
             <td></td> 
            
             <td colspan="2"><a class="check_response" href="accept_page.jsp">Check Response</a></td> 
                
            </tr>
            </table>
        </div>
        <footer class="footer">
            <p style="text-align: center; padding: 20px;color: white">@copy writer saved</p>
        </footer>
    </body>
</html>
