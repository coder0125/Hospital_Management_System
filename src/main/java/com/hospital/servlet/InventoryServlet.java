package com.hospital.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.InventoryDAO;
import com.hospital.model.Inventory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/inventory")
public class InventoryServlet extends HttpServlet{

	    private InventoryDAO inventoryDAO = new InventoryDAO();

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<Inventory> items = inventoryDAO.getAllInventoryItems();
	        if (items == null) {
	            items = new ArrayList<>();
	        }
	        request.setAttribute("items", items);
	        request.getRequestDispatcher("inventory-list.jsp").forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String itemName = request.getParameter("itemName");
	        int quantity = Integer.parseInt(request.getParameter("quantity"));

	        Inventory inventory = new Inventory();
	        inventory.setItemName(itemName);
	        inventory.setQuantity(quantity);

	        inventoryDAO.addInventoryItem(inventory);
	        response.sendRedirect("inventory");
	    }

	    // Implement delete and edit methods if needed
	}

