<%-- 
    Document   : exam
    Created on : Nov 26, 2019, 6:14:51 PM
    Author     : Mostafa Mohamed
--%>
<%@page import="com.javatpoint.DB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Page</title>
    </head>
    <body>
        <%
                int numOfQues;
                int numOfAns;
                int numOfSkipped;
                int CorrectAnswers;
                int wrongAnswers;
                int CID =1;
                ArrayList<Integer> Wrong_answers = new ArrayList();
                ArrayList<Integer> Right_answers = new ArrayList();
                DB db=new DB();
                db.Connection();
//                ResultSet RS = db.Make_Read_Query("SELECT QID FROM candidate_answer,candidate where candidate_answer.CID=candidate.CID");
//                ArrayList questions = new ArrayList();

                // Random rand = new Random();
                numOfQues = 15;
                out.print("all questions are "+numOfQues+ "<br>");


                /*..................................................................*/
                ResultSet RS = db.Make_Read_Query("SELECT answer.AID FROM candidate_answer,candidate,answer where candidate_answer.CID=candidate.CID and answer.AID=candidate_answer.AID and  answer.correct=1");
                 while(RS.next())
                {
                    int id=RS.getInt(1);
                    Right_answers.add(id);
                }
                out.print("all Corrected answers are "+Right_answers.size()+ "<br>");
                /*..................................................................*/
                RS = db.Make_Read_Query("SELECT answer.AID FROM candidate_answer,candidate,answer where candidate_answer.CID=candidate.CID and answer.AID=candidate_answer.AID and  answer.correct=0");
                while(RS.next())
                {
                    int id=RS.getInt(1);
                    Wrong_answers.add(id);
                }
                out.print("all Wrong answers are "+Wrong_answers.size()+ "<br>");
                /*..................................................................*/
                
                numOfSkipped=numOfQues-(Right_answers.size()+ Wrong_answers.size());
                out.print("all Skipped Questions are "+numOfSkipped + "<br>");
        %>
    </body>
</html>
