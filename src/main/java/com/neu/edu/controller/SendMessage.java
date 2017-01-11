package com.neu.edu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.dao.MessageDAO;
import com.neu.edu.dao.UserDAO;
import com.neu.edu.pojo.Message;
import com.neu.edu.pojo.User;

@Controller
public class SendMessage {
	@RequestMapping(value="/sendMessage.htm", method = RequestMethod.GET)
	public String showSendMessageForm(@ModelAttribute("message")Message message, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session!= null) {
			String toUser = request.getParameter("To");
			request.getSession().setAttribute("contactName", toUser);
		    return "sendMessage";
		}
		return "index";
	}
	
	@RequestMapping(value="/sendMessage.htm", method = RequestMethod.POST)
	public String sendMessageProcess(@ModelAttribute("message")Message message, HttpServletRequest request) {
		String userName = (String) request.getSession().getAttribute("loggedInUserName");
		String contactName = (String) request.getSession().getAttribute("contactName");
		
		String messageContent = request.getParameter("message");
		
		Date curDate = new Date();
		SimpleDateFormat format = new SimpleDateFormat();
		format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String sentDate = format.format(curDate);
		
			MessageDAO messageDao = new MessageDAO();		
			UserDAO userDao = new UserDAO();
			User messageBeSentUser;
			try {
				messageBeSentUser = userDao.lookupUserByUserName(contactName);
				Message newMessage = messageDao.create(messageBeSentUser,userName, messageContent, sentDate);
				messageBeSentUser.addMessages(newMessage);
				userDao.updateUser(messageBeSentUser);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}						
		    return "sendMessageResult";
	}
		
}
