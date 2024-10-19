package com.hospital.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hospital.db.DBConnection;
import com.hospital.model.Appointment;

public class AppointmentDAO {

	    // Method to add a new appointment
	    public void addAppointment(Appointment appointment) {
	        String query = "INSERT INTO appointments (patient_id, appointment_date, doctor) VALUES (?, ?, ?)";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setInt(1, appointment.getPatientId());
	            stmt.setDate(2, Date.valueOf(appointment.getGetGetAppointmentDate()));
	            stmt.setString(3, appointment.getDoctor());

	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    // Method to fetch all appointments
	    public List<Appointment> getAllAppointments() {
	        List<Appointment> appointments = new ArrayList<>();
	        String query = "SELECT * FROM appointments";
	        try (Connection conn = DBConnection.getConnection();
	             Statement stmt = conn.createStatement();
	             ResultSet rs = stmt.executeQuery(query)) {

	            while (rs.next()) {
	                Appointment appointment = new Appointment();
	                appointment.setId(rs.getInt("id"));
	                appointment.setPatientId(rs.getInt("patient_id"));
	                appointment.setGetGetAppointmentDate(rs.getDate("appointment_date").toLocalDate());
	                appointment.setDoctor(rs.getString("doctor"));
	                appointments.add(appointment);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return appointments;
	    }
	}

	  /*  private List<Appointment> appointments = new ArrayList<>();
	    private int currentId = 1;

	    public void addAppointment(Appointment appointment) {
	        appointment.setId(currentId++);
	        appointments.add(appointment);
	    }

	    public List<Appointment> getAllAppointments() {
	        return appointments;
	    }

	    public Appointment getAppointmentById(int id) {
	        return appointments.stream().filter(a -> a.getId() == id).findFirst().orElse(null);
	    }

	    public void deleteAppointment(int id) {
	        appointments.removeIf(a -> a.getId() == id);
	    }
	    */
	

