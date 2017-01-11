package com.neu.edu.controller;

import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.User;

@Controller
public class FindPeopleController {
	private Pattern pattern;
	private Matcher matcher; 
	private Matcher matcher1; 
	private Matcher matcher2;
	private static final String numeric_Pattern = "^[0-9]*$"; 
	private static final String userName_Pattern = "^[A-Za-z0-9_-]{2,25}$"; 
	private static final String age_Pattern = "^[0-9]{1,2}$"; 
	
	@RequestMapping(value="/findPeople.htm", method = RequestMethod.GET)
	public String showFindPeopleForm(HttpServletRequest request){
//		HttpSession session = request.getSession(false);
//		if (session.getAttribute("loggedInUser") != null) {
		    return "findPeople"; 
//		}
//		return "index";
	}
	
	@RequestMapping(value="/lookupByNumber.htm", method = RequestMethod.GET)
	public String showLookUpByNumberForm(HttpServletRequest request){
//		HttpSession session = request.getSession(false);
//		if (session.getAttribute("loggedInUser") != null) {
		    return "lookupByNumber"; 
//		}
//		return "error";
	}
	
	@RequestMapping(value="/lookupByNumber.htm", method = RequestMethod.POST)
	public String lookupByNumberProcess(HttpServletRequest request) throws Exception{
		if(request.getParameter("LookupMemberID") == null || request.getParameter("LookupMemberID").equals("")){
			String lookupIDError = "Member Number cannot be blank";
			request.setAttribute("lookupIDError", lookupIDError);
			return "findPeople";
		}if(!(request.getParameter("LookupMemberID") == null && request.getParameter("LookupMemberID").equals(""))){
			pattern = Pattern.compile(numeric_Pattern);  
	     	matcher = pattern.matcher(request.getParameter("LookupMemberID"));  
	     	   if (!matcher.matches()) {
	     		  String lookupIDNotValidError = "Member ID not Valid"; 
	     		  request.setAttribute("lookupIDNotValidError", lookupIDNotValidError);
	     		  return "findPeople";
	     	   }
	     	   else{
	  			long lookupID = Long.parseLong(request.getParameter("LookupMemberID"));
	  			request.setAttribute("lookupID", lookupID);
	  			UserDAO userDao = new UserDAO();
	  			User lookupUserByID;
	  			
	  			try {
	  				lookupUserByID = userDao.lookupUserByID(lookupID);
	  				
	  				if(lookupUserByID !=null){
	  					System.out.println("Find User By Id Successful");
	  					request.getSession().setAttribute("lookupByIDUser", lookupUserByID);				
	  				}else{
	  					String error = "Member Id does not exist! Please try another one!";
	  					request.setAttribute("error", error);
	  				}
	  			} catch (AdException e) {
	  				// TODO Auto-generated catch block
	  				e.printStackTrace();
	  			}
	  			return "lookupByNumber";
	  		}
		}
		return "lookupByNumber";
	}
	
	@RequestMapping(value="/lookupByIDUserDetails.htm", method = RequestMethod.GET)
	public String showUserDetailsForm(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		if (session.getAttribute("lookupByIDUser") != null) {
		    return "lookupByIDUserDetails"; 
		}
		return "error";
	}
	
	@RequestMapping(value="/lookupByName.htm", method = RequestMethod.GET)
	public String showLookUpByUserNameForm(HttpServletRequest request){
//		HttpSession session = request.getSession(false);
//		if (session.getAttribute("lookupByNameUser") != null) {
		    return "lookupByName"; 
//		}
//		return "error";
	}
	
	@RequestMapping(value="/lookupByName.htm", method = RequestMethod.POST)
	public String lookupByUserNameProcess(HttpServletRequest request,Model model) throws Exception{
		if(request.getParameter("LookupMemberName") == null || request.getParameter("LookupMemberName").equals("")){
			String lookupUserNameError = "UserName cannot be blank";
			request.setAttribute("lookupUserNameError", lookupUserNameError);
			return "findPeople";
		}if(!(request.getParameter("LookupMemberName") == null && request.getParameter("LookupMemberName").equals(""))){
			pattern = Pattern.compile(userName_Pattern);  
	     	matcher = pattern.matcher(request.getParameter("LookupMemberName"));  
	     	   if (!matcher.matches()) {
	     		  String lookupUserNameNotValidError = "Username not Valid"; 
	     		  request.setAttribute("lookupUserNameNotValidError", lookupUserNameNotValidError);
	     		  return "findPeople";
	     	   }
	     	   else{
		  			String lookupName = request.getParameter("LookupMemberName");
		  			request.getSession().setAttribute("lookupName", lookupName);
		  			UserDAO userDao = new UserDAO();
		  			List<User> users = userDao.lookupUserByName(lookupName);
		  			if(users.size()>0){
//		  				model.addAttribute("users", users);
		  				request.getSession().setAttribute("lookupByNameUser", users);
		  				return "lookupByName";
		  			}else{
		  				String error = "User does not exist! Please try another one!";
	  					request.setAttribute("error", error);
	  					return "lookupByName";
		  			}
	     	   }
		}
		return "lookupByName";
	}
	
	@RequestMapping(value="/lookupByNameUserDetails.htm", method = RequestMethod.GET)
	public String showUserDetailsForm2(HttpServletRequest request,ModelMap model) throws Exception{
		String userName = request.getParameter("userName");
		UserDAO userDao = new UserDAO();
		User user = (User) userDao.lookupUserByUserName(userName);
		model.addAttribute("lookupByNameUser", user);
		return "lookupByNameUserDetails"; 
	}
	
	@RequestMapping(value="/searchUsers.htm", method = RequestMethod.GET)
	public String showSearchUsersForm(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		if (session.getAttribute("quickSearchUser") != null) {
		    return "searchUsers"; 
		}
		return "error";
	}
	
	@RequestMapping(value="/searchUsers.htm", method = RequestMethod.POST)
	public String quickSearchProcess(HttpServletRequest request,Model model) throws Exception{
		
		
		if(request.getParameter("MinAge") == null || request.getParameter("MinAge").equals("") ||
				request.getParameter("MaxAge") == null || request.getParameter("MaxAge").equals("")	){
			String ageError = "age cannot be blank";
			request.setAttribute("ageError", ageError);
			return "findPeople";
		}if(!(request.getParameter("MinAge") == null && request.getParameter("MinAge").equals("") &&
				request.getParameter("MaxAge") == null && request.getParameter("MaxAge").equals(""))){
			pattern = Pattern.compile(age_Pattern);  
	     	matcher1 = pattern.matcher(request.getParameter("MinAge"));
	     	matcher2 = pattern.matcher(request.getParameter("MaxAge"));
	     	   if (!matcher1.matches() || !matcher2.matches()) {
	     		  String ageNotValidError = "Age not Valid"; 
	     		  request.setAttribute("ageNotValidError", ageNotValidError);
	     		  return "findPeople";
	     	   }  
	    }if(request.getParameter("stateName") == null || request.getParameter("stateName").equals("")){
			String stateError = "State cannot be blank";
			request.setAttribute("stateError", stateError);
			return "findPeople";
		}if(request.getParameter("cityName") == null || request.getParameter("cityName").equals("")){
			String cityError = "City cannot be blank";
			request.setAttribute("cityError", cityError);
			return "findPeople";
		}else{
			String gender = request.getParameter("GenderID");
			String seekingGender = request.getParameter("SeekingGenderID");
			int minAge = Integer.parseInt(request.getParameter("MinAge"));
			int maxAge = Integer.parseInt(request.getParameter("MaxAge"));
			String country = request.getParameter("CountryRegionID");
			String state = request.getParameter("stateName");
			String city = request.getParameter("cityName");

  			request.getSession().setAttribute("minAge", minAge);
  			request.getSession().setAttribute("maxAge", maxAge);
  			request.getSession().setAttribute("gender", gender);
  			request.getSession().setAttribute("seekingGender", seekingGender);
  			request.getSession().setAttribute("country", country);
  			request.getSession().setAttribute("state", state);
  			request.getSession().setAttribute("city", city);

  			UserDAO userDao = new UserDAO();
  			List<User> users = userDao.quickSearchUser(gender, seekingGender, minAge, maxAge, country, state, city);
  			if(users.size()>0){
  				request.getSession().setAttribute("quickSearchUser", users);
  				return "searchUsers";
  			}else{
  				String error = "User does not exist! Please try another one!";
					request.setAttribute("error", error);
					return "searchUsers";
  			}
		}
	}
	
	@RequestMapping(value="/quickSearchUserDetails.htm", method = RequestMethod.GET)
	public String showUserDetailsForm3(HttpServletRequest request,ModelMap model) throws Exception{
		String userName = request.getParameter("userName");
		UserDAO userDao = new UserDAO();
		User user = (User) userDao.lookupUserByUserName(userName);
		model.addAttribute("quickSearchUser", user);
		return "quickSearchUserDetails"; 
	}
	
	
}

