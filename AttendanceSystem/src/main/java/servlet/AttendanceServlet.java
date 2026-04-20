package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import dao.DBConnection;

public class AttendanceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        String name = req.getParameter("student_name");
        String date = req.getParameter("date");
        String status = req.getParameter("status");
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO attendance(student_name, date, status) VALUES (?, ?, ?)"
            );

            ps.setString(1, name);
            ps.setString(2, date);
            ps.setString(3, status);

            ps.executeUpdate();

            res.sendRedirect("markAttendance.jsp?success=1");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
