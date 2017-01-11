package com.neu.edu.controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.dao.ContactDAO;
import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.Contact;
import com.neu.edu.pojo.User;

@Controller
public class ViewContactsController {
	@RequestMapping(value="/viewContacts.htm", method = RequestMethod.GET)
	public String showContactForm(HttpServletRequest request, ModelMap model) {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("loggedInUser") != null) {
			User u = (User) request.getSession().getAttribute("loggedInUser");
			long userID = u.getUserID();
			List<Contact> contacts = new ArrayList<Contact>();
			int page = 0;
			if(request.getParameter("page") !=null){
	            page = Integer.parseInt(request.getParameter("page")) - 1;
	        }
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6250final?user=root&password=202255");
				
				Statement stmt = conn.createStatement();
				ResultSet total = stmt.executeQuery("SELECT COUNT(*) FROM contactstable where UserName="+userID);
				total.next();
				int totalRecords = total.getInt(1);
	            ResultSet rs = stmt.executeQuery("SELECT * FROM contactstable where UserName='" + userID + "'LIMIT 10 OFFSET "+ page*10);
	            if(!rs.next()){
	                   String errorMessage = "No Result!";
	            }
	            while(rs.next()){
	            	Contact contact = new Contact();
	            	contact.setContactID(rs.getLong(1));
	            	contact.setComments(rs.getString(2));
	            	contact.setContactName(rs.getString(3));
	            	contact.setDateAdded(rs.getString(4));
	            	contact.setUserName(rs.getString(5));          	
	            	contacts.add(contact);            	
	            }
	            
	            model.addAttribute("currentPage", page);
	            model.addAttribute("maxPage", totalRecords/10+1);
	            model.addAttribute("contactsList", contacts);
	            
	            conn.close();
	            stmt.close();
	            rs.close();
	            
	            return "viewContacts";
			} catch (Exception e) {
	            System.out.println("EXCEPTION: " + e.getMessage());
	        }
		}
		return "index";
	}
	
	@RequestMapping(value="/viewContacts.htm", method = RequestMethod.POST)
	public String deleteContactProcess(HttpServletRequest request) throws Exception {
		String userName = (String) request.getSession().getAttribute("loggedInUserName");
		ContactDAO contactDao = new ContactDAO();
		UserDAO userDao = new UserDAO();
		User contactsBeDeleteUser = userDao.lookupUserByUserName(userName);		

		String deleteContactID = request.getParameter("deleteContactsID");
		System.out.println("deleteContactID"+deleteContactID);
		String[] contactID = deleteContactID.split(",");
		for (int i = 0; i < contactID.length; i++) { 
			try {
				contactDao.delete(Long.parseLong(contactID[i]));
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (AdException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		userDao.updateUser(contactsBeDeleteUser);
		return "viewContacts";
	}
	
	@RequestMapping(value="/updateComments.htm", method = RequestMethod.POST)
	public String updateContactProcess(HttpServletRequest request) throws Exception {
		String userName = (String) request.getSession().getAttribute("loggedInUserName");
		ContactDAO contactDao = new ContactDAO();
		UserDAO userDao = new UserDAO();
		User contactsBeUpdateUser = userDao.lookupUserByUserName(userName);		
		Long updateContactID = Long.parseLong(request.getParameter("updateContactsID"));
		String comments = request.getParameter("updateComment");
	    contactDao.updateComment(updateContactID, comments);
		userDao.updateUser(contactsBeUpdateUser);
		return "viewContacts";
	}
	
	
	
}
