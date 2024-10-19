package com.hospital.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.db.DBConnection;
import com.hospital.model.Billing;

public class BillingDAO {

	    // Method to add a billing record
	    public void addBilling(Billing billing) {
	        String query = "INSERT INTO billing (patient_id, consultation_fee, treatment_fee, date) VALUES (?, ?, ?, ?)";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setInt(1, billing.getPatientId());
	            stmt.setDouble(2, billing.getConsultationFee());
	            stmt.setDouble(3, billing.getTreatmentFee());
	            stmt.setDate(4, Date.valueOf(billing.getDate()));

	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    // Method to fetch all billing records for a specific patient
	    public List<Billing> getBillingByPatientId(int patientId) {
	        List<Billing> billingList = new ArrayList<>();
	        String query = "SELECT * FROM billing WHERE patient_id = ?";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setInt(1, patientId);
	            ResultSet rs = stmt.executeQuery();

	            while (rs.next()) {
	                Billing billing = new Billing();
	                billing.setId(rs.getInt("id"));
	                billing.setPatientId(rs.getInt("patient_id"));
	                billing.setConsultationFee(rs.getDouble("consultation_fee"));
	                billing.setTreatmentFee(rs.getDouble("treatment_fee"));
	                billing.setTotalAmount(rs.getDouble("total_amount"));
	                billing.setDate(rs.getDate("date").toLocalDate());
	                billingList.add(billing);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return billingList;
	    }

	}

	   /* private List<Billing> bills = new ArrayList<>();
	    private int currentId = 1;

	    public void addBilling(Billing billing) {
	        billing.setId(currentId++);
	        bills.add(billing);
	    }

	    public List<Billing> getAllBilling() {
	        return bills;
	    }

	    public Billing getBillingById(int id) {
	        return bills.stream().filter(b -> b.getId() == id).findFirst().orElse(null);
	    }

	    public void deleteBilling(int id) {
	        bills.removeIf(b -> b.getId() == id);
	    }
	}*/
