package com.milknest.milknest_online_services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author VICTUS
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/milknest";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

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
  // Get userId from session
        HttpSession session = request.getSession(false);
        Integer userId = (Integer) (session != null ? session.getAttribute("userId") : null);

        if (userId == null) {
            // User not logged in: Show login first message
            request.setAttribute("message", "Please log in first to add products to the cart.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        try (PrintWriter out = response.getWriter()) {
            // Get product details from the request
            int productId = Integer.parseInt(request.getParameter("productId")); // Product ID
            String productName = request.getParameter("productName");           // Product Name
            double price = Double.parseDouble(request.getParameter("price"));   // Price
            int quantity = 1; // Default quantity is 1

           

            try {
                // Add product details to the database
                if (addToCart(productId, productName, userId, quantity, price)) {
                    // Redirect to cart page on success
                    response.sendRedirect("frmCart.jsp");
                } else {
                    // Show error message if insertion failed
                    out.println("<h3>Failed to add product to cart!</h3>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<h3>Error: " + e.getMessage() + "</h3>");
            }
        }
    }

    /**
     * Helper method to insert cart data into the database.
     */
    private boolean addToCart(int productId, String productName, int userId, int quantity, double price) throws Exception {
        // Establish database connection
        Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        // SQL query to insert cart details into the database
        String sql = "INSERT INTO tbl_cartmaster (productId, ProductName, userId, quantity, price) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, productId);
        stmt.setString(2, productName);
        stmt.setInt(3, userId);
        stmt.setInt(4, quantity);
        stmt.setDouble(5, price);

        // Execute query and check if insertion was successful
        int rowsInserted = stmt.executeUpdate();

        // Close resources
        stmt.close();
        conn.close();

        return rowsInserted > 0;
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
        return "Handles cart operations, including adding items to the cart.";
    }// </editor-fold>

}
