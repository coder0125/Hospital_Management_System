package com.hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hospital.db.DBConnection;
import com.hospital.model.Inventory;

public class InventoryDAO {

	    // Method to add inventory item
	    public void addInventoryItem(Inventory inventory) {
	        String query = "INSERT INTO inventory (item_name, quantity) VALUES (?, ?)";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setString(1, inventory.getItemName());
	            stmt.setInt(2, inventory.getQuantity());

	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    // Method to fetch all inventory items
	    public List<Inventory> getAllInventoryItems() {
	        List<Inventory> inventoryList = new ArrayList<>();
	        String query = "SELECT * FROM inventory";
	        try (Connection conn = DBConnection.getConnection();
	             Statement stmt = conn.createStatement();
	             ResultSet rs = stmt.executeQuery(query)) {

	            while (rs.next()) {
	                Inventory inventory = new Inventory();
	                inventory.setId(rs.getInt("id"));
	                inventory.setItemName(rs.getString("item_name"));
	                inventory.setQuantity(rs.getInt("quantity"));
	                inventoryList.add(inventory);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return inventoryList;
	    }
	}


	 /*   private List<Inventory> items = new ArrayList<>();
	    private int currentId = 1;

	    public void addInventory(Inventory inventory) {
	        inventory.setId(currentId++);
	        items.add(inventory);
	    }

	    public List<Inventory> getAllInventory() {
	        return items;
	    }

	    public Inventory getInventoryById(int id) {
	        return items.stream().filter(i -> i.getId() == id).findFirst().orElse(null);
	    }

	    public void deleteInventory(int id) {
	        items.removeIf(i -> i.getId() == id);
	    }
	}
*/
