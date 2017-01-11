package com.neu.edu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.dao.ContactDAO;
import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.Contact;
import com.neu.edu.pojo.User;

@Controller
public class AddContactController {
	@RequestMapping(value="/addContact.htm", method = RequestMethod.GET)
	public String showAddContactForm(@ModelAttribute("contact")Contact contact, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session!= null) {
			String contactName = request.getParameter("AddToListContactName");
			request.getSession().setAttribute("contactName", contactName);
		    return "addContact";
		}
		return "index";
	}
	
	@RequestMapping(value="/addContactResult.htm", method = RequestMethod.POST)
	public String addContactProcess(@ModelAttribute("contact")Contact contact,HttpServletRequest request) throws Exception {
		String userName = (String) request.getSession().getAttribute("loggedInUserName");
		System.out.println("logged In user name" + userName);
//		User user = (User) request.getSession().getAttribute("loggedInUser");
		String contactName = (String) request.getSession().getAttribute("contactName");
		String comments = request.getParameter("comments");

		Date curDate = new Date();
		SimpleDateFormat format = new SimpleDateFormat();
		format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateAdded = format.format(curDate);
		
		try {
			ContactDAO contactDao = new ContactDAO();		
			UserDAO userDao = new UserDAO();
			User contactBeAddedUser = userDao.lookupUserByUserName(userName);			
			
			boolean exists = contactDao.exists(contactBeAddedUser, contactName);
			if (exists) {
				String addContactError = "Error message: This contact name already exists in your contacts list! Please add another one!"; 
	     		request.setAttribute("addContactError", addContactError);
			}else{	
				Contact newContact = contactDao.create(contactBeAddedUser, contactName, comments, dateAdded);				
				contactBeAddedUser.addContacts(newContact);
				userDao.updateUser(contactBeAddedUser);
			}		
		} catch (AdException e) {
            System.out.println(e.getMessage());
        }
		    return "addContactResult";
	}
	
	
	
}
