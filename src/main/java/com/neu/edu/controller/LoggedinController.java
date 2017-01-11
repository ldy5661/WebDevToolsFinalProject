package com.neu.edu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.User;

@Controller
public class LoggedinController {
	@Autowired
	private ServletContext servletContext;
	
	private Pattern pattern;  
	private Matcher matcher; 
	private static final String password_Pattern = "^[a-zA-Z]\\w{3,100}$"; 
	
	@RequestMapping(value="/details.htm", method = RequestMethod.GET)
	public String showUserDetails(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		if (session.getAttribute("loggedInUser") != null) {
		    return "details"; 
		}
		return "index";
	}
	
	@RequestMapping(value="/update.htm", method = RequestMethod.GET)
	public String showUserUpdateForm(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			User user = (User) session.getAttribute("loggedInUser");		
			model.addAttribute("user", user);
		    return "updateUserInformation";
		}
		
		return "index";
	}
	
	
	@RequestMapping(value="/updated.htm", method = RequestMethod.POST)
	public String updateProcess(@ModelAttribute("user")User user,HttpServletRequest request,
			@RequestParam("photo") MultipartFile photo){
		HttpSession session = request.getSession(false);
		if (session != null) {
			if (!photo.isEmpty()) {
				try {
					File file;
					String check = File.separator; 
					String path = null;
					String rootPath = null;
					String path2 = null;
				
					if(check.equalsIgnoreCase("\\")) {
						rootPath = servletContext.getRealPath("").replace("build\\","");
						path = "/Users/dongyueli/Desktop/6250final/WebTools_Final_Project_DongyueLi_April04/src/main/webapp/resources/images/";
						path2 = rootPath+ check;
					}
					
					if(check.equalsIgnoreCase("/")) {
						rootPath = servletContext.getRealPath("").replace("build/","");
						rootPath += "/";
						path = "/Users/dongyueli/Desktop/6250final/WebTools_Final_Project_DongyueLi_April04/src/main/webapp/resources/images/";
						path2 = rootPath+check;
				    }

				
					if(user.getPhoto() != null){
			           String fileNameWithExt = System.currentTimeMillis() + user.getPhoto().getOriginalFilename();
			           file = new File(path + fileNameWithExt);
			           
			           user.getPhoto().transferTo(file);
			           FileChannel inputChannel = new FileInputStream(path + fileNameWithExt).getChannel();
			           FileChannel outputChannel = new FileOutputStream(path2 + fileNameWithExt).getChannel();
			           outputChannel.transferFrom(inputChannel, 0, inputChannel.size());
			           user.setFileLocation(fileNameWithExt);
					}
				
			} catch (Exception e) {
				return "You failed to upload " + user.getPhoto().getOriginalFilename() + " => " + e.getMessage();
			}
		}else {
			User user2 = (User) request.getSession().getAttribute("loggedInUser");
			user.setFileLocation(user2.getFileLocation());
		}
			User user2 = (User) request.getSession().getAttribute("loggedInUser");
			
			user.setUserID(user2.getUserID());
			user.setUserName(user2.getUserName());
			user.setUserPassword(user2.getUserPassword());
			user.setEmail(user2.getEmail());
			user.setEnabled(user2.isEnabled());
			user.setAuthority(user2.getAuthority());
			user.setdOBday(user2.getdOBday());
			user.setdOBmonth(user2.getdOBmonth());
			user.setdOByear(user2.getdOByear());
			user.setGender(user2.getGender());
			user.setSeekingGender(user2.getSeekingGender());
			user.setMoreChildrenFlag(user2.getMoreChildrenFlag());
//			Calendar today = Calendar.getInstance();  
//	        int age = today.get(Calendar.YEAR) - user2.getdOByear();
//	        request.getSession().setAttribute("age", age);
			session.setAttribute("loggedInUser", user);
			UserDAO userDao = new UserDAO();
			try {
				userDao.updateUser(user);
			} catch (AdException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return "updated";
		}
			return "index";	
	}


	@RequestMapping(value="/changePassword.htm", method = RequestMethod.GET)
	public String showChangePasswordForm(HttpServletRequest request){
			HttpSession session = request.getSession(false);
			if (session.getAttribute("loggedInUser") != null) {
			    return "changePassword"; 
			}
			return "index";
	}
	
	@RequestMapping(value="/changePassword.htm", method = RequestMethod.POST)
	public String changePasswordProcess(HttpServletRequest request) throws Exception{
		UserDAO userDao = new UserDAO();
		User isValidUser;
		PswProcess pswProcess = new PswProcess();
		try {
			isValidUser = userDao.isValidUser(request.getParameter("userName"), request.getParameter("oldpass"));
			
			if(isValidUser !=null){
				String newpass1 = request.getParameter("newpass1");
				String newpass2 = request.getParameter("newpass2");
				
				if(newpass1 == null || newpass1.equals("")){
					String newPassword1Error = "New Password cannot be blank";
					request.setAttribute("newPassword1Error", newPassword1Error);
					return "changePassword";
				}if(newpass2 == null || newpass2.equals("") ){
					String newPassword2Error = "New password MUST be entered twice and cannot be blank";
					request.setAttribute("newPassword2Error", newPassword2Error);
					return "changePassword";
				}if(!(newpass1 == null && newpass1.equals(""))){
					pattern = Pattern.compile(password_Pattern);  
			     	matcher = pattern.matcher(newpass1);  
			     	   if (!matcher.matches()) {
			     		  String newPassword1NotValidError = "The password's first character must be a letter, "
					     	      + "it must contain at least 4 characters and no more than 16 characters "
					     	      + "and no characters other than letters, numbers and the underscore may be used";  
			     		  request.setAttribute("newPassword1NotValidError", newPassword1NotValidError);
			     		  return "changePassword";
			     	   } 
				}
				if(! newpass1.equals(newpass2)){
					String passwordNotMatchError = "Passwords entered do NOT match";
					request.setAttribute("passwordNotMatchError", passwordNotMatchError);
					return "changePassword";
				}else{
					System.out.println("User old Password Correct");
					request.getSession().setAttribute("loggedInUser", isValidUser);				
					String newPassword = request.getParameter("newpass1");
					String newUserPassword = pswProcess.md5Pwd(newPassword);
					userDao.changePassword(request.getParameter("userName"), newUserPassword);			
					return "passwordChanged";
				}
			}else{
				String oldPasswordError = "Password incorrect - couldnt login to make changes - try again";
				request.setAttribute("oldPasswordError", oldPasswordError);
				return "changePassword";
			}
		} catch (AdException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return "changePassword";
	}
		
	
}




