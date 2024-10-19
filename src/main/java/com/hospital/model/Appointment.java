package com.hospital.model;

import java.sql.Date;
import java.time.LocalDate;

public class Appointment {

	    private int id;
	    private int patientId;
	    private Date date;
	    private String doctor;
	    //@SuppressWarnings("unused")
		private  LocalDate getGetAppointmentDate; 

		//public String getAppointmentDate;

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

	    public Date getDate() {
	        return date;
	    }

	    public void setDate(Date date) {
	        this.date = date;
	    }

	    public String getDoctor() {
	        return doctor;
	    }

	    public void setDoctor(String doctor) {
	        this.doctor = doctor;
	    }

		public LocalDate getGetGetAppointmentDate() {
			return getGetAppointmentDate;
		}

		public void setGetGetAppointmentDate(LocalDate localDate) {
			this.getGetAppointmentDate = localDate;
		}



		


	
	}

