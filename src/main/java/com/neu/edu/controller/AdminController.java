package com.neu.edu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.dao.ContactDAO;
import com.neu.edu.dao.MessageDAO;
import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.Contact;
import com.neu.edu.pojo.Message;
import com.neu.edu.pojo.User;

@Controller
public class AdminController {
	@RequestMapping(value="/adminHomePage.htm", method = RequestMethod.GET)
	public String showAddContactForm(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session!= null) {
			List<User> users = new ArrayList<User>();
			UserDAO userDao = new UserDAO();
			
			try {
				users = userDao.getAllUser();
			} catch (AdException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(users.size()>0){
				request.setAttribute("users", users);
  				return "adminHomePage";
  			}else{
  				
  				////need no message code here
				return "adminHomePage";
  			}
		}
		return "index";
	}
	
	@RequestMapping(value="/adminLookupByNameUserDetails.htm", method = RequestMethod.GET)
	public String showUserDetailsForm2(HttpServletRequest request,ModelMap model) throws Exception{
		String userName = request.getParameter("userName");
		UserDAO userDao = new UserDAO();
		User user = (User) userDao.lookupUserByUserName(userName);
		model.addAttribute("lookupByNameUser", user);
		return "adminLookupByNameUserDetails"; 
	}
	
	@RequestMapping(value="/changeUserAccountStatus.htm", method = RequestMethod.POST)
	public String changeUserAccountStatusProcess(HttpServletRequest request,ModelMap model) throws Exception{
		String userName = request.getParameter("userName");
		System.out.println("USer name "+userName);
		
		UserDAO userDao = new UserDAO();
		User user = (User) userDao.lookupUserByUserName(userName);
		
		if(user.isEnabled()){
			user.setEnabled(false);
		}else{
			user.setEnabled(true);
		}
		userDao.updateUser(user);
		return "adminLookupByNameUserDetails"; 
		
		
	}
	
	
	@RequestMapping(value="/adminDeleteUser.htm", method = RequestMethod.POST)
	public String adminDeleteUserProcess(HttpServletRequest request,ModelMap model) throws Exception{
		String userName = request.getParameter("userName");
		UserDAO userDao = new UserDAO();
		User user = (User) userDao.lookupUserByUserName(userName);
		Long userID = user.getUserID();
		
		MessageDAO messageDao = new MessageDAO();
		messageDao.deleteUserMessage(userID);
		messageDao.deleteUserMessageByFromUserName(userName);
		
		ContactDAO contactDao = new ContactDAO();
		contactDao.deleteUserContact(userID);
		contactDao.deleteUserContactByContactName(userName);
		
		userDao.delete(user);
		return "adminLookupByNameUserDetails"; 
		
		
	}
	
	
	
	
}
