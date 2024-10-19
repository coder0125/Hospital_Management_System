package com.hospital.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.db.DBConnection;
import com.hospital.model.EHR;

public class EHRDAO {

	    // Method to add a new EHR entry
	    public void addEHR(EHR ehr) {
	        String query = "INSERT INTO ehr (patient_id, medical_history, prescription, date) VALUES (?, ?, ?, ?)";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setInt(1, ehr.getPatientId());
	            stmt.setString(2, ehr.getMedicalHistory());
	            stmt.setString(3, ehr.getPrescription());
	            stmt.setDate(4, Date.valueOf(ehr.getDate()));

	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    // Method to fetch all EHR entries for a specific patient
	    public List<EHR> getAllRecords() {
			List<EHR> ehrList = new ArrayList<>();
			String query = "SELECT * FROM ehr";
			try (Connection conn = DBConnection.getConnection();
				 PreparedStatement stmt = conn.prepareStatement(query);
				 ResultSet rs = stmt.executeQuery()) {
		
				while (rs.next()) {
					EHR ehr = new EHR();
					ehr.setId(rs.getInt("id"));
					ehr.setPatientId(rs.getInt("patient_id"));
					ehr.setMedicalHistory(rs.getString("medical_history"));
					ehr.setPrescription(rs.getString("prescription"));
					ehr.setDate(rs.getDate("date").toLocalDate());
					ehrList.add(ehr);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return ehrList;
		}
	    }


	  /*  private List<EHR> records = new ArrayList<>();
	    private int currentId = 1;

	    public void addRecord(EHR record) {
	        record.setId(currentId++);
	        records.add(record);
	    }

	    public List<EHR> getAllRecords() {
	        return records;
	    }

	    public EHR getRecordById(int id) {
	        return records.stream().filter(r -> r.getId() == id).findFirst().orElse(null);
	    }

	    public void deleteRecord(int id) {
	        records.removeIf(r -> r.getId() == id);
	    }
	}*/

