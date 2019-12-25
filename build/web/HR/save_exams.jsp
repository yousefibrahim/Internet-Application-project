<%-- 
    Document   : save_exam1
    Created on : Dec 24, 2019, 9:41:57 PM
    Author     : ahmed
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<%@page import="com.javatpoint.question"%>
<%@page import="com.javatpoint.answer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Integer> correct_list=new ArrayList();
            int CID=Integer.parseInt(request.getParameter("CID"));
            int EID=Integer.parseInt(request.getParameter("ExamID"));
            int ans1;
            int ans2;
            int ans3;
            int ans4;
            int ans5;
            if(request.getParameter("ans1")!=null)
            {
                ans1=Integer.parseInt(request.getParameter("ans1"));
            }
            else
            {
                ans1=0;
            }
            if(request.getParameter("ans2")!=null)
            {
                ans2=Integer.parseInt(request.getParameter("ans2"));
            }
            else
            {
                ans2=0;
            }
            if(request.getParameter("ans3")!=null)
            {
                ans3=Integer.parseInt(request.getParameter("ans3"));
            }
            else
            {
                ans3=0;
            }
            if(request.getParameter("ans4")!=null)
            {
                ans4=Integer.parseInt(request.getParameter("ans4"));
            }
            else
            {
                ans4=0;
            }
            if(request.getParameter("ans5")!=null)
            {
                ans5=Integer.parseInt(request.getParameter("ans5"));
            }
            else
            {
                ans5=0;
            }
            int QID1=Integer.parseInt(request.getParameter("QID1"));
            int QID2=Integer.parseInt(request.getParameter("QID2"));
            int QID3=Integer.parseInt(request.getParameter("QID3"));
            int QID4=Integer.parseInt(request.getParameter("QID4"));
            int QID5=Integer.parseInt(request.getParameter("QID5"));
            DB db=new DB();
            db.Connection();
            ResultSet r=db.Make_Read_Query("select correct from answer where AID="+ans1+"");
            if(r.next())
            {
                int a=r.getInt(1);
                correct_list.add(a);
            }
            r=db.Make_Read_Query("select correct from answer where AID="+ans2+"");
            if(r.next())
            {
                int a=r.getInt(1);
                correct_list.add(a);
            }
            r=db.Make_Read_Query("select correct from answer where AID="+ans3+"");
            if(r.next())
            {
                int a=r.getInt(1);
                correct_list.add(a);
            }
            r=db.Make_Read_Query("select correct from answer where AID="+ans4+"");
            if(r.next())
            {
                int a=r.getInt(1);
                correct_list.add(a);
            }
            r=db.Make_Read_Query("select correct from answer where AID="+ans5+"");
            if(r.next())
            {
                int a=r.getInt(1);
                correct_list.add(a);
            }
            if(ans1!=0)
            {
                db.Make_Update_Query("insert into candidate_answer (CID,ExamID,QID,AID) values ("+CID+","+EID+","+QID1+","+ans1+")");
            }
            if(ans2!=0)
            {
                db.Make_Update_Query("insert into candidate_answer (CID,ExamID,QID,AID) values ("+CID+","+EID+","+QID2+","+ans2+")");
            }
            if(ans3!=0)
            {
                db.Make_Update_Query("insert into candidate_answer (CID,ExamID,QID,AID) values ("+CID+","+EID+","+QID3+","+ans3+")");
            }
            if(ans4!=0)
            {
                db.Make_Update_Query("insert into candidate_answer (CID,ExamID,QID,AID) values ("+CID+","+EID+","+QID4+","+ans4+")");
            }
            if(ans5!=0)
            {
                db.Make_Update_Query("insert into candidate_answer (CID,ExamID,QID,AID) values ("+CID+","+EID+","+QID5+","+ans5+")");
            }
            response.sendRedirect("examreport.jsp?ExamID="+EID+"");
        %>
    </body>
</html>
