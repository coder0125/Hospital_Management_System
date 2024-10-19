package com.hospital.model;

import java.time.LocalDate;


public class Billing {

	    private int id;
	    private int patientId;
	    private double consultationFee;
	    private double treatmentFee;
	    private double totalAmount;
	    //@SuppressWarnings("unused")
		private LocalDate date;
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public int getPatientId() {
	        return patientId;
	    }

	    public void setPatientId(int patientId) {
	        this.patientId = patientId;
	    }

	    public double getConsultationFee() {
	        return consultationFee;
	    }

	    public void setConsultationFee(double consultationFee) {
	        this.consultationFee = consultationFee;
	    }

	    public double getTreatmentFee() {
	        return treatmentFee;
	    }

	    public void setTreatmentFee(double treatmentFee) {
	        this.treatmentFee = treatmentFee;
	    }

	    public double getTotalAmount() {
	        return totalAmount;
	    }

	    public void setTotalAmount(double totalAmount) {
	        this.totalAmount = totalAmount;
	    }

	    public LocalDate getDate() {
	        return date;
	    }

	    // Setter
	    public void setDate(LocalDate date) {
	        this.date = date;
	    }
	}

