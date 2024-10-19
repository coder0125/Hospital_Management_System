package com.hospital.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.AppointmentDAO;
import com.hospital.model.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/appointments")
public class AppointmentServlet extends HttpServlet {

		private AppointmentDAO appointmentDAO = new AppointmentDAO();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<Appointment> appointments = appointmentDAO.getAllAppointments();
	        if (appointments == null) {
	            appointments = new ArrayList<>();
	        }
	        request.setAttribute("appointments", appointments);
	        request.getRequestDispatcher("appointment-list.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));
	        String doctor = request.getParameter("doctor");
	        String date = request.getParameter("date");

	        Appointment appointment = new Appointment();
	        appointment.setPatientId(patientId);
	        appointment.setDoctor(doctor);
	        appointment.setDate(java.sql.Date.valueOf(date));

	        appointmentDAO.addAppointment(appointment);
	        response.sendRedirect("appointments");
	    }

	    // Implement delete and edit methods
	}

