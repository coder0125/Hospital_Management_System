package com.hospital.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.EHRDAO;
import com.hospital.model.EHR;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ehr")
public class EHRServlet extends HttpServlet{

	    private EHRDAO ehrDAO = new EHRDAO();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<EHR> records = ehrDAO.getAllRecords();
	        if (records == null) {
	            records = new ArrayList<>();
	        }
	        request.setAttribute("records", records);
	        request.getRequestDispatcher("ehr-list.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));
	        String medicalHistory = request.getParameter("medicalHistory");
	        String prescription = request.getParameter("prescription");

	        EHR record = new EHR();
	        record.setPatientId(patientId);
	        record.setMedicalHistory(medicalHistory);
	        record.setPrescription(prescription);

	        ehrDAO.addEHR(record);
	        response.sendRedirect("ehr");
	    }

	    // Implement delete and edit methods if needed
	}
