package com.hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hospital.db.DBConnection;
import com.hospital.model.Patient;

public class PatientDAO {
	
	    // Method to add a new patient
	    public void addPatient(Patient patient) {
	        String query = "INSERT INTO patients (name, age, address, phone_number) VALUES (?, ?, ?, ?)";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {
	            
	            stmt.setString(1, patient.getName());
	            stmt.setInt(2, patient.getAge());
	            stmt.setString(3, patient.getAddress());
	            stmt.setString(4, patient.getPhoneNumber());

	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    // Method to fetch all patients
	    public List<Patient> getAllPatients() {
	        List<Patient> patients = new ArrayList<>();
	        String query = "SELECT * FROM patients";
	        try (Connection conn = DBConnection.getConnection();
	             Statement stmt = conn.createStatement();
	             ResultSet rs = stmt.executeQuery(query)) {

	            while (rs.next()) {
	                Patient patient = new Patient();
	                patient.setId(rs.getInt("id"));
	                patient.setName(rs.getString("name"));
	                patient.setAge(rs.getInt("age"));
	                patient.setAddress(rs.getString("address"));
	                patient.setPhoneNumber(rs.getString("phone_number"));
	                patients.add(patient);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return patients;
	    }
	}


	   /* private List<Patient> patients = new ArrayList<>();
	    private int currentId = 1;

	    public void addPatient(Patient patient) {
	        patient.setId(currentId++);
	        patients.add(patient);
	    }

	    public List<Patient> getAllPatients() {
	        return patients;
	    }

	    public Patient getPatientById(int id) {
	        return patients.stream().filter(p -> p.getId() == id).findFirst().orElse(null);
	    }

	    public void deletePatient(int id) {
	        patients.removeIf(p -> p.getId() == id);
	    }
	    */
