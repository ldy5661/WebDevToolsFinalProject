package com.neu.edu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.pojo.Contact;

@Controller
public class DeleteContactController {
	
	@RequestMapping(value="/deleteContact.htm", method = RequestMethod.GET)
	public String showAddContactForm(@ModelAttribute("contact")Contact contact, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session!= null) {
			String contactName = request.getParameter("AddToListContactName");
			request.getSession().setAttribute("contactName", contactName);
		    return "addContact";
		}
		return "index";
	}
	

}
