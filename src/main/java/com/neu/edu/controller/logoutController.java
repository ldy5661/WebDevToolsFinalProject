package com.neu.edu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class logoutController {
	@RequestMapping(value="/logout.htm", method = RequestMethod.GET)
	public String logoutProcess(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
			session.removeAttribute("loggedInUser");
		    return "index";
	}
}
