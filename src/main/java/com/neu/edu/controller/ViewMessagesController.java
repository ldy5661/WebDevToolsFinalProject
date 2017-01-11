package com.neu.edu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.neu.edu.dao.MessageDAO;
import com.neu.edu.dao.UserDAO;

import com.neu.edu.pojo.Message;
import com.neu.edu.pojo.User;

@Controller
public class ViewMessagesController {
	
	@RequestMapping(value="/viewMessages.htm", method = RequestMethod.GET)
	public String showMessageForm(HttpServletRequest request, ModelMap model) {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("loggedInUser") != null) {
			User u = (User) request.getSession().getAttribute("loggedInUser");
			List<Message> messages = new ArrayList<Message>();
			MessageDAO messageDao = new MessageDAO();
			try {
				messages= messageDao.listUserMessage(u);				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(messages.size()>0){
				request.setAttribute("msgList", messages);
				System.out.println("test message:"+ messages.size());
  				return "viewMessages";
  			}else{
				return "viewMessages";
  			}

		}
		else{
			return "index";
		}
	}
	
	@RequestMapping(value="/viewMessages.htm", method = RequestMethod.POST)
	public String deleteMessagesProcess(HttpServletRequest request) throws Exception {
		String userName = (String) request.getSession().getAttribute("loggedInUserName");
		MessageDAO messageDao = new MessageDAO();
		UserDAO userDao = new UserDAO();
		User messageBeDeleteUser = userDao.lookupUserByUserName(userName);		

		String deleteMessageID = request.getParameter("deleteMessageID");
		System.out.println("deleteMessageID"+deleteMessageID);
		String[] messageID = deleteMessageID.split(",");
		for (int i = 0; i < messageID.length; i++) { 
				messageDao.delete(Long.parseLong(messageID[i]));
		}
		userDao.updateUser(messageBeDeleteUser);
		return "viewMessages";
	}
	
}