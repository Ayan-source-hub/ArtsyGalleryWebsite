package gallery;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class chatgptlogin
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Example validation (Replace with database validation)
        if ("admin".equals(username) && "password".equals(password)) {
            response.sendRedirect("chatgpthome.jsp");
        } else {
            response.getWriter().println("<h3>Invalid username or password. Please try again!</h3>");
            request.getRequestDispatcher("jsp/index.jsp").include(request, response);
        }
    }
}
