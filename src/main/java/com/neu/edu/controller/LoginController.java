package com.neu.edu.controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.User;

@Controller
public class LoginController {
	
	
	@RequestMapping(value="/login.htm", method = RequestMethod.GET)
	public String showLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			response.sendRedirect("viewMessages.htm"+ session.getAttribute("loggedInUserName"));
		}
		return "index";
	}
	
	@RequestMapping(value="/login.htm", method = RequestMethod.POST)
	public String executeLogin(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession(false);
		if (session != null) {
		    session.invalidate();
		}
		UserDAO userDao = new UserDAO();

		User isValidUser;
		try {
			isValidUser = userDao.isValidUser(request.getParameter("userName"), request.getParameter("userPassword"));
		
			if(isValidUser !=null){
				if(isValidUser.getAuthority().equals("user") && isValidUser.isEnabled()){
					session = request.getSession();
					System.out.println("User Login Successful");
					session.setAttribute("loggedInUser", isValidUser);
					String loggedInUserName = isValidUser.getUserName();
					session.setAttribute("loggedInUserName", loggedInUserName);
					System.out.println("logged In user name " + loggedInUserName);
					response.sendRedirect("viewMessages.htm?username="+ session.getAttribute("loggedInUserName"));
				}
				if(isValidUser.getAuthority().equals("user") && !isValidUser.isEnabled()){
					String error = "Your Account has been suspended, please talke to your administrator for more information";
					request.setAttribute("error", error);
					return "index";
				}if(isValidUser.getAuthority().equals("admin") && isValidUser.isEnabled()){
					session = request.getSession();
					System.out.println("Admin Login Successful");
					session.setAttribute("loggedInUser", isValidUser);
					String loggedInUserName = isValidUser.getUserName();
					session.setAttribute("loggedInUserName", loggedInUserName);
					System.out.println("logged In user name " + loggedInUserName);
					response.sendRedirect("adminHomePage.htm?username="+ session.getAttribute("loggedInUserName"));
				}			
			}else{
				String error = "login fail, check your username and password";
				request.setAttribute("error", error);
				return "index";
			}
		} catch (AdException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
}
}
