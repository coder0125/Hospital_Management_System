package com.hospital.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.BillingDAO;
import com.hospital.model.Billing;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/billing")
public class BillingServlet extends HttpServlet{


	    private BillingDAO billingDAO = new BillingDAO();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));
	        List<Billing> bills = billingDAO.getBillingByPatientId(patientId);
	        if (bills == null) {
	            bills = new ArrayList<>(); // Ensure we don't get a NullPointerException
	        }
	        request.setAttribute("billing", bills);
	        request.getRequestDispatcher("billing-list.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));
	        double consultationFee = Double.parseDouble(request.getParameter("consultationFee"));
	        double treatmentFee = Double.parseDouble(request.getParameter("treatmentFee"));
	        double totalAmount = consultationFee + treatmentFee;

	        Billing billing = new Billing();
	        billing.setPatientId(patientId);
	        billing.setConsultationFee(consultationFee);
	        billing.setTreatmentFee(treatmentFee);
	        billing.setTotalAmount(totalAmount);

	        billingDAO.addBilling(billing);
	        response.sendRedirect("billing");
	    }

	    // Implement delete and edit methods if needed
	}

