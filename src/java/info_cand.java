/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.javatpoint.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author M_H
 */
@WebServlet(urlPatterns = {"/info_cand"})
public class info_cand extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession s=  request.getSession(true);
            String n=request.getParameter("name");
            String e=request.getParameter("email");
            String pass =request.getParameter("password");
            String ph= request.getParameter("phone");
            String pos =request.getParameter("position");
            String CV= request.getParameter("cv");
            String email=(String) s.getAttribute("email");
            String CID=(String) s.getAttribute("CID");
           /* s.setAttribute("name", n);s.setAttribute("email", e);
            s.setAttribute("password", pass);s.setAttribute("phone", ph);
            s.setAttribute("position", pos);s.setAttribute("cv", CV);
            String name=(String) s.getAttribute("name");
            String email=(String) s.getAttribute("email");
            String password=(String) s.getAttribute("password");
            String phone=(String) s.getAttribute("phone");
            String position=(String) s.getAttribute("POS");
            String cv=(String) s.getAttribute("cv");
            out.print(name+email+password+phone);*/
           // response.sendRedirect("postion_cv.jsp");
            out.print("<p>connected<p/>"+n+e+pass+ph);
            DB conn =new DB();
            if(conn.Connection())
            {
               // out.print("<p>connected<p/>");
            }
            String check_email="select CMail from candidate where CMail='"+email+"'";
            conn.Make_Read_Query(check_email);
            if(conn.Make_Read_Query(check_email).next())
            {
                response.sendRedirect("signup.jsp?value=This email not exsist");
            }
            String query_check="select cv from cv_cand where CMail='"+email+"'";
            conn.Make_Read_Query(query_check);
            if(CV!=null)
            {
                String query_cv="select cv from cv_cand where CMail='"+email+"'";
            conn.Make_Read_Query(query_cv);
            if(conn.Make_Read_Query(query_cv).next())
            {
                String sql_update = ("UPDATE cv_cand SET cv ='"+CV+"', Cposition ='"+pos+"' WHERE Cid ='"+CID+"'");
                conn.Make_Update_Query(sql_update);
                out.print("<p>Update query<p/>");
                response.sendRedirect("accept_page.jsp");
            }
             else{   
                String query=("insert into cv_cand(Cid,cv,Cposition,CMail) values('" +CID + "','" + CV + "','" + pos+ "','" + email+ "')");
                conn.Make_Update_Query(query);
                response.sendRedirect("accept_page.jsp");
            }
            }
            else if(n !=null){
                
            String Query =("insert into candidate(CName,CPhone_number,CMail,CPassword)values('" + n + "','" +Integer.parseInt(ph)+ "','" +e+ "','" + pass+ "')");
            
                out.print("<p>connected<p/>");
            if(conn.Make_Update_Query(Query))
            {
                out.print("<p>connected exact<p/>");
                response.sendRedirect("index.jsp?value=You are registered and login with email");
            }
            }
            /*******************************add cv************************************/
         /* String Q =("insert into cv_cand(cv,Cposition,Cemail)values('" + CV + "','" +pos+ "','" + email+ "')");
           conn.Make_Update_Query(Q);
           if(conn.Make_Update_Query(Q))
           {
               out.print("ok");
           }*/
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(info_cand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(info_cand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
