package com.neu.edu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.neu.edu.pojo.User;

@Controller
public class PDFController {
	@RequestMapping(value = "/downloadPDF.htm", method = RequestMethod.GET)
    public ModelAndView downloadPDF(HttpServletRequest request) {
		View view = new PDFView();
		Map<String,Object> userData = new HashMap<String,Object>();
		User user = (User) request.getSession().getAttribute("user7");
		userData.put("user", user);
        return new ModelAndView(view, "userData", userData);
    }
}
