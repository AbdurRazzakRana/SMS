package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddSubject", urlPatterns = {"/AddSubject"})
public class AddSubject extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            String semester = request.getParameter("newsemester");
            String code = request.getParameter("newcode");
            String title = request.getParameter("newcoursetitle");
            String credit = request.getParameter("newcredit");
            float creditNumber = Float.valueOf(credit);
            
            if (semester == "" || code == "" || title == "" || credit == "") {
                throw new NullPointerException();

            } else {
                Connection c = null;
                Statement stmt = null;
                try {
                    System.out.println("We are going to adding the subject");
                    Class.forName("org.postgresql.Driver");
                    c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/semestermaintainance","postgres", "123456");
                    c.setAutoCommit(false);
                    System.out.println("Values: ");
                    System.out.println(semester);
                    System.out.println(code);
                    System.out.println(title);
                    System.out.println(creditNumber);
                    stmt = c.createStatement();
                    String sql = "INSERT INTO syllabus(semester,coursecode,coursetitle,coursecredit)"
                            + " VALUES ('"+semester+"','"+code+"','"+title+"',"+creditNumber+");";
                    stmt.executeUpdate(sql);
                    stmt.close();
                    c.commit();
                    c.close();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Course: "+title+" with Course Code:"+code+" has successfully added to the Semester:"+semester+"');");
                    out.println("location='coursesAndTeachersInfo.jsp';");
                    out.println("</script>");
                    
//                    ServletContext context = getServletContext();
//                    RequestDispatcher dispatcher = context.getRequestDispatcher("/coursesAndTeachersInfo.jsp");
//                    dispatcher.forward(request, response);
                    

                } catch (ArithmeticException ui) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Unknown exception, please add again.');");
                    out.println("location='coursesAndTeachersInfo.jsp';");
                    out.println("</script>");
                } catch (NullPointerException np){
                System.out.println("Null Pointer Exception khaice");
                np.printStackTrace();
                
                }

            }
        } catch (Exception ti) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Fields are not fullfield properly, Try again proparly.');");
            out.println("location='coursesAndTeachersInfo.jsp';");
            out.println("</script>");
            System.out.println("Insert hoy nai");
            ti.printStackTrace();

        } finally {
            out.close();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
