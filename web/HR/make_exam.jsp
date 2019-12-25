<%-- 
    Document   : exam
    Created on : Dec 21, 2019, 10:33:18 PM
    Author     : ahmed
--%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.javatpoint.DB"%>
<%@page import="com.javatpoint.question"%>
<%@page import="com.javatpoint.answer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
            String Exam1Type=request.getParameter("e1t").toString();
            String Exam2Type=request.getParameter("e2t").toString();
            String Exam3Type=request.getParameter("e3t").toString();
            int CID=Integer.parseInt(request.getParameter("cid").toString());
            int ExamID=0;
            ArrayList<Integer> QID_list=new ArrayList();
            ArrayList<answer> Right_Ans_list=new ArrayList();
            ArrayList<answer> wrong_Ans_list=new ArrayList();
            DB db=new DB();
            db.Connection();
            ResultSet r=db.Make_Read_Query("select * from question,exam where exam.ExamID=question.ExamID and exam.ExamType='"+Exam1Type+"' order by Rand() limit 5");
            while(r.next())
            {
                int QID=Integer.parseInt(r.getString("QID").toString());
                ExamID=Integer.parseInt(r.getString("ExamID").toString());
                QID_list.add(QID);
            }
            for (int i=0;i<QID_list.size();i++)
            {
                //out.print(question_list.get(i).QID+"  "+question_list.get(i).QName+"  "+question_list.get(i).ExamID+"<br>");
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=1 order by Rand() limit 1");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =1;
                Right_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=0 order by Rand() limit 3");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =0;
                wrong_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            }
            
        // exam2
            
            QID_list.clear();
            Right_Ans_list.clear();
            wrong_Ans_list.clear();
            r=db.Make_Read_Query("select * from question,exam where exam.ExamID=question.ExamID and exam.ExamType='"+Exam2Type+"' order by Rand() limit 5");
            while(r.next())
            {
                int QID=Integer.parseInt(r.getString("QID").toString());
                ExamID=Integer.parseInt(r.getString("ExamID").toString());
                QID_list.add(QID);
            }
            for (int i=0;i<QID_list.size();i++)
            {
                //out.print(question_list.get(i).QID+"  "+question_list.get(i).QName+"  "+question_list.get(i).ExamID+"<br>");
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=1 order by Rand() limit 1");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =1;
                Right_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=0 order by Rand() limit 3");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =0;
                wrong_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            }
            
            // exam 3
            
             QID_list.clear();
            Right_Ans_list.clear();
            wrong_Ans_list.clear();
            r=db.Make_Read_Query("select * from question,exam where exam.ExamID=question.ExamID and exam.ExamType='"+Exam3Type+"' order by Rand() limit 5");
            while(r.next())
            {
                int QID=Integer.parseInt(r.getString("QID").toString());
                ExamID=Integer.parseInt(r.getString("ExamID").toString());
                QID_list.add(QID);
            }
            for (int i=0;i<QID_list.size();i++)
            {
                //out.print(question_list.get(i).QID+"  "+question_list.get(i).QName+"  "+question_list.get(i).ExamID+"<br>");
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=1 order by Rand() limit 1");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =1;
                Right_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            
            r=db.Make_Read_Query("select * from answer where QID="+QID_list.get(i)+" and correct=0 order by Rand() limit 3");
            while(r.next())
            {
                answer answers=new answer();
                answers.QID=Integer.parseInt(r.getString(4).toString());
                answers.AID=Integer.parseInt(r.getString(1).toString());
                answers.AName=r.getString(2).toString();
                answers.correct =0;
                wrong_Ans_list.add(answers);
                db.Make_Update_Query("insert into candidate_exam (CID,ExamID,QID,AID) values("+CID+","+ExamID+","+QID_list.get(i)+","+answers.AID+")");
            }
            }
            response.sendRedirect("board.jsp");
        %>
    </body>
</html>