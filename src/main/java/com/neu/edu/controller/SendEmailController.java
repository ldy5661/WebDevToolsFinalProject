package com.neu.edu.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sendEmail.htm")
public class SendEmailController {
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(method = RequestMethod.GET)
	public String sendEmailForm(HttpServletRequest request) {
		return "emailForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String sendEmail(HttpServletRequest request) {

	// reads form input
	final String emailTo = request.getParameter("mailTo");
	final String subject = request.getParameter("subject");
	final String yourmailid = request.getParameter("yourmail");
	final String message = request.getParameter("message");
	
	mailSender.send(new MimeMessagePreparator(){
		@Override
		public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			messageHelper.setTo(emailTo);
			messageHelper.setSubject(subject);
			messageHelper.setReplyTo(yourmailid);
			messageHelper.setText(message);
			
		}
	});
		
		return "sendEmailResult";
}
}
