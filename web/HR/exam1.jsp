<%-- 
    Document   : exam1
    Created on : Dec 22, 2019, 10:22:41 PM
    Author     : ahmed
--%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<%@page import="com.javatpoint.question"%>
<%@page import="com.javatpoint.answer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../cssexam.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navbar1">
            <span class="gradience1">HR-System</span>
            
            <ul class="list1"> 
                <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>
      <%
          String ID=session.getAttribute("CID").toString();
            int CID=Integer.parseInt(ID);
            int ExamID;
            ArrayList<Integer> exam_list=new ArrayList();
            ArrayList<question> question_list=new ArrayList();
            ArrayList<answer> Ans_list_Q1=new ArrayList();
            ArrayList<answer> Ans_list_Q2=new ArrayList();
            ArrayList<answer> Ans_list_Q3=new ArrayList();
            ArrayList<answer> Ans_list_Q4=new ArrayList();
            ArrayList<answer> Ans_list_Q5=new ArrayList();
            DB db=new DB();
            db.Connection();
            ResultSet r=db.Make_Read_Query("select distinct ExamID from candidate_exam where CID="+CID+"");
            while(r.next())
            {
                ExamID=r.getInt(1);
                exam_list.add(ExamID);
            }
            ExamID=exam_list.get(0);
            r=db.Make_Read_Query("select distinct question.QID,question.QName from candidate_exam,question where candidate_exam.QID=question.QID and CID="+CID+" and candidate_exam.ExamID="+ExamID+"");
            while(r.next())
            {
              question Question=new question();
              Question.QID=r.getInt(1);
              Question.QName=r.getString(2);
              question_list.add(Question);
            }
            //Q1answer
            r=db.Make_Read_Query("select answer.AID,answer.AName,answer.correct from candidate_exam,answer where candidate_exam.AID=answer.AID and candidate_exam.CID="+CID+" and candidate_exam.QID="+question_list.get(0).QID+" order by Rand() limit 4");
            while(r.next())
            {
              answer Answer=new answer();
              Answer.AID=r.getInt(1);
              Answer.AName=r.getString(2);
              Answer.correct=r.getInt(3);
              Ans_list_Q1.add(Answer);
            }
            //Q2Answer
            r=db.Make_Read_Query("select answer.AID,answer.AName,answer.correct from candidate_exam,answer where candidate_exam.AID=answer.AID and candidate_exam.CID="+CID+" and candidate_exam.QID="+question_list.get(1).QID+" order by Rand() limit 4");
            while(r.next())
            {
              answer Answer=new answer();
              Answer.AID=r.getInt("AID");
              Answer.AName=r.getString("AName");
              Answer.correct=r.getInt("correct");
              Ans_list_Q2.add(Answer);
            }
//            //Q3answer
            r=db.Make_Read_Query("select answer.AID,answer.AName,answer.correct from candidate_exam,answer where candidate_exam.AID=answer.AID and candidate_exam.CID="+CID+" and candidate_exam.QID="+question_list.get(2).QID+" order by Rand() limit 4");
            while(r.next())
            {
              answer Answer=new answer();
              Answer.AID=r.getInt("AID");
              Answer.AName=r.getString("AName");
              Answer.correct=r.getInt("correct");
              Ans_list_Q3.add(Answer);
            }
            //Q4answer
            r=db.Make_Read_Query("select answer.AID,answer.AName,answer.correct from candidate_exam,answer where candidate_exam.AID=answer.AID and candidate_exam.CID="+CID+" and candidate_exam.QID="+question_list.get(3).QID+" order by Rand() limit 4");
            while(r.next())
            {
              answer Answer=new answer();
              Answer.AID=r.getInt("AID");
              Answer.AName=r.getString("AName");
              Answer.correct=r.getInt("correct");
              Ans_list_Q4.add(Answer);
            }
            //Q5answer
            r=db.Make_Read_Query("select answer.AID,answer.AName,answer.correct from candidate_exam,answer where candidate_exam.AID=answer.AID and candidate_exam.CID="+CID+" and candidate_exam.QID="+question_list.get(4).QID+" order by Rand() limit 4");
            while(r.next())
            {
              answer Answer=new answer();
              Answer.AID=r.getInt("AID");
              Answer.AName=r.getString("AName");
              Answer.correct=r.getInt("correct");
              Ans_list_Q5.add(Answer);
            }
            out.print("<form method='post' action='save_exams.jsp'>");
            out.print("<p>1-"+question_list.get(0).QName+"</p>");
            out.print("<input type='radio' name='ans1' value="+Ans_list_Q1.get(0).AID+">");
            out.print(Ans_list_Q1.get(0).AName+"</br>");
            out.print("<input type='radio' name='ans1' value="+Ans_list_Q1.get(1).AID+">");
            out.print(Ans_list_Q1.get(1).AName+"</br>");
            out.print("<input type='radio' name='ans1' value="+Ans_list_Q1.get(2).AID+">");
            out.print(Ans_list_Q1.get(2).AName+"</br>");
            out.print("<input type='radio' name='ans1' value="+Ans_list_Q1.get(3).AID+">");
            out.print(Ans_list_Q1.get(3).AName+"</br>");
            out.print("<input type='hidden' name='QID1' value="+question_list.get(0).QID+">");
            
            out.print("<p>2-"+question_list.get(1).QName+"</p>");
            out.print("<input type='radio' name='ans2' value="+Ans_list_Q2.get(0).AID+">");
            out.print(Ans_list_Q2.get(0).AName+"</br>");
            out.print("<input type='radio' name='ans2' value="+Ans_list_Q2.get(1).AID+">");
            out.print(Ans_list_Q2.get(1).AName+"</br>");
            out.print("<input type='radio' name='ans2' value="+Ans_list_Q2.get(2).AID+">");
            out.print(Ans_list_Q2.get(2).AName+"</br>");
            out.print("<input type='radio' name='ans2' value="+Ans_list_Q2.get(3).AID+">");
            out.print(Ans_list_Q2.get(3).AName+"</br>");
            out.print("<input type='hidden' name='QID2' value="+question_list.get(1).QID+">");
            
            out.print("<p>3-"+question_list.get(2).QName+"</p>");
            out.print("<input type='radio' name='ans3' value="+Ans_list_Q3.get(0).AID+">");
            out.print(Ans_list_Q3.get(0).AName+"</br>");
            out.print("<input type='radio' name='ans3' value="+Ans_list_Q3.get(1).AID+">");
            out.print(Ans_list_Q3.get(1).AName+"</br>");
            out.print("<input type='radio' name='ans3' value="+Ans_list_Q3.get(2).AID+">");
            out.print(Ans_list_Q3.get(2).AName+"</br>");
            out.print("<input type='radio' name='ans3' value="+Ans_list_Q3.get(3).AID+">");
            out.print(Ans_list_Q3.get(3).AName+"</br>");
            out.print("<input type='hidden' name='QID3' value="+question_list.get(2).QID+">");
            
            out.print("<p>4-"+question_list.get(3).QName+"</p>");
            out.print("<input type='radio' name='ans4' value="+Ans_list_Q4.get(0).AID+">");
            out.print(Ans_list_Q4.get(0).AName+"</br>");
            out.print("<input type='radio' name='ans4' value="+Ans_list_Q4.get(1).AID+">");
            out.print(Ans_list_Q4.get(1).AName+"</br>");
            out.print("<input type='radio' name='ans4' value="+Ans_list_Q4.get(2).AID+">");
            out.print(Ans_list_Q4.get(2).AName+"</br>");
            out.print("<input type='radio' name='ans4' value="+Ans_list_Q4.get(3).AID+">");
            out.print(Ans_list_Q4.get(3).AName+"</br>");
            out.print("<input type='hidden' name='QID4' value="+question_list.get(3).QID+">");
            
            out.print("<p>5-"+question_list.get(4).QName+"</p>");
            out.print("<input type='radio' name='ans5' value="+Ans_list_Q5.get(0).AID+">");
            out.print(Ans_list_Q5.get(0).AName+"</br>");
            out.print("<input type='radio' name='ans5' value="+Ans_list_Q5.get(1).AID+">");
            out.print(Ans_list_Q5.get(1).AName+"</br>");
            out.print("<input type='radio' name='ans5' value="+Ans_list_Q5.get(2).AID+">");
            out.print(Ans_list_Q5.get(2).AName+"</br>");
            out.print("<input type='radio' name='ans5' value="+Ans_list_Q5.get(3).AID+">");
            out.print(Ans_list_Q5.get(3).AName+"</br>");
            out.print("<input type='hidden' name='QID5' value="+question_list.get(4).QID+">");
            out.print("<input type='hidden' name='ExamID' value="+ExamID+">");
            out.print("<input type='hidden' name='CID' value="+CID+">");
            out.print("<input type='submit' value='submit'>");
            out.print("</form>");
            
      %>
    </body>
</html>
