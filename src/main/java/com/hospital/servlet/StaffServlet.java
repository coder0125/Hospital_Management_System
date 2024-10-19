package com.hospital.servlet;

import java.io.IOException;
import java.util.List;

import com.hospital.dao.StaffDAO;
import com.hospital.model.Staff;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/staff")
public class StaffServlet extends HttpServlet {
 
	private static final long serialVersionUID = 6396119038065943221L;
private StaffDAO staffDAO = new StaffDAO();

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     List<Staff> staffList = staffDAO.getAllStaff();
     request.setAttribute("staffList", staffList);
     request.getRequestDispatcher("staff-list.jsp").forward(request, response);
 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String name = request.getParameter("name");
     String position = request.getParameter("position");
     double salary = Double.parseDouble(request.getParameter("salary"));

     Staff staff = new Staff();
     staff.setName(name);
     staff.setPosition(position);
     staff.setSalary(salary);

     staffDAO.addStaff(staff);
     response.sendRedirect("staff");
 }
}
