package gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SaveDeliveryAddress")
public class Deleveryaddress extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
//    private static final String DB_URL = "jdbc:mysql://localhost:3306/DAddress";
//    private static final String DB_USER = "your_username";
//    private static final String DB_PASSWORD = "shivam@2004";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String pincode = request.getParameter("pincode");
        String locality = request.getParameter("locality");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String landmark = request.getParameter("landmark");
        String addresstype = request.getParameter("addresstype");

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/address?useSSL=false","root","shivam@2004");

            // Insert data into the database
            String sql = "INSERT INTO address (name, mobile, pincode, locality, address, city, state, landmark, addresstype) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, mobile);
            preparedStatement.setString(3, pincode);
            preparedStatement.setString(4, locality);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, city);
            preparedStatement.setString(7, state);
            preparedStatement.setString(8, landmark);
            preparedStatement.setString(9, addresstype);

            int result = preparedStatement.executeUpdate();

            if (result > 0) {
                out.println("<h2>Delivery address saved successfully!</h2>");
            } else {
                out.println("<h2>Failed to save delivery address. Please try again.</h2>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h2>An error occurred: " + e.getMessage() + "</h2>");
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}