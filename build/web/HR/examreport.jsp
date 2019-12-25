<%-- 
    Document   : examreport
    Created on : Dec 24, 2019, 9:49:01 AM
    Author     : FCI Student
--%>
<%@page import="com.javatpoint.DB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <body>
      <%
                int numOfQues;
                int numOfAns;
                int numOfSkipped;
                ArrayList Right_answers = new ArrayList();
                ArrayList Wrong_answers = new ArrayList();
                int CID = 1;
                DB db=new DB();
                db.Connection();
                numOfQues = 5;
                out.print("The first Exam has "+ numOfQues + "<br>");


                /*..................................................................*/
                ResultSet RS = db.Make_Read_Query("SELECT candidate_answer.AID FROM candidate_answer,candidate,exam,answer where candidate_answer.CID=candidate.CID and candidate_answer.ExamID=exam.ExamID and candidate_answer.AID=Answer.AID and correct=1");
                while(RS.next())
                {
                    int a=RS.getInt(1);
                    Right_answers.add(a);
                }
                out.print("The Correct Answers for first Exam has "+Right_answers.size()+ "<br>");
                /*..................................................................*/
                RS = db.Make_Read_Query("SELECT candidate_answer.AID FROM candidate_answer,candidate,exam,answer where candidate_answer.CID=candidate.CID and candidate_answer.ExamID=exam.ExamID and candidate_answer.AID=Answer.AID and correct=0");
                while(RS.next())
                {
                    int a=RS.getInt(1);
                    Wrong_answers.add(a);
                }
                out.print("The Right Answers for first Exam has "+Wrong_answers.size()+ "<br>");
                /*..................................................................*/
                
                numOfSkipped=numOfQues-(Right_answers.size()+ Wrong_answers.size());
                out.print("The Skipped Questions for first Exam has "+numOfSkipped + "<br>");
        %>
    </body>
</html>
