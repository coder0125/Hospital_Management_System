package com.hospital.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.PatientDAO;
import com.hospital.model.Patient;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/patients")
public class PatientServlet extends HttpServlet {

	    private PatientDAO patientDAO = new PatientDAO();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<Patient> patients = patientDAO.getAllPatients();
	        if (patients == null) {
	            patients = new ArrayList<>(); // Initialize to avoid null
	        }
	        request.setAttribute("patients", patients);
	        request.getRequestDispatcher("patient-list.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String name = request.getParameter("name");
	        int age = Integer.parseInt(request.getParameter("age"));
	        String address = request.getParameter("address");
	        String phoneNumber = request.getParameter("phone");

	        Patient patient = new Patient();
	        patient.setName(name);
	        patient.setAge(age);
	        patient.setAddress(address);
	        patient.setPhoneNumber(phoneNumber);

	        PatientDAO patientDAO = new PatientDAO();
	        patientDAO.addPatient(patient); // Add the patient

	        response.sendRedirect("patients"); // Redirect to the patients list
	    }


	    // Implement delete and edit methods
	}

