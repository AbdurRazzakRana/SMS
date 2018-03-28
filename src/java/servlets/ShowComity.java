
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ShowComity", urlPatterns = {"/ShowComity"})
public class ShowComity extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("At show comity");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String semester = request.getParameter("semester");
        

        HttpSession tempSession = request.getSession();
        tempSession.setAttribute("selectedSemester", semester);
        //tempSession.setAttribute("viewTable", type);
        System.out.println("Before dispatching from ViewingDetails");
        ServletContext context = getServletContext();
        RequestDispatcher dispatcher = context.getRequestDispatcher("/exam-committe.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


}
