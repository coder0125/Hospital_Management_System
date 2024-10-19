package com.hospital.model;

import java.time.LocalDate;

public class EHR {

	    private int id;
	    private int patientId;
	    private String medicalHistory;
	    private String prescription;
	   // private String localDate;
		private LocalDate date;
	    

	    public LocalDate getDate() {
			return date;
		}

		public void setDate(LocalDate localDate) {
			this.date = localDate;
		}

		// Getters and Setters
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

	    public String getMedicalHistory() {
	        return medicalHistory;
	    }

	    public void setMedicalHistory(String medicalHistory) {
	        this.medicalHistory = medicalHistory;
	    }

	    public String getPrescription() {
	        return prescription;
	    }

	    public void setPrescription(String prescription) {
	        this.prescription = prescription;
	    }
	}

