package com.neu.edu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.neu.edu.dao.UserDAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.User;

/**
 * Handles requests for the application home page.
 */
@Controller
//@SessionAttributes("user1")
public class UserRegisterController{
	@Autowired
	@Qualifier("userValidator")
	UserValidator validator;
	

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	
	private static final Logger logger = LoggerFactory.getLogger(UserRegisterController.class);
	
	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value="/register_step1.htm", method = RequestMethod.GET)
	public String initializeForm1(@ModelAttribute("user") User user1, BindingResult result) {
		return "register_01";
	}
	
	@RequestMapping(value="/register_step2.htm", method = RequestMethod.GET)
	public String initializeForm2(@ModelAttribute("user") User user1, BindingResult result) {
		return "register_02";
	}
	
	@RequestMapping(value="/register_step2.htm" , method = RequestMethod.POST)
	public String createUserfrmStep1(@ModelAttribute("user") @Valid User user1,BindingResult result,HttpServletRequest request) throws AdException {
		validator.validate(user1, result);
		if (result.hasErrors()) {
			return "register_01";
		}else{		
			UserDAO userDao = new UserDAO();
			boolean exists = userDao.exists(request.getParameter("userName"));
			if (exists) {
				result.rejectValue("userName", "DuplicateKey.user",
					"This useranem has been created, please change to another one.");
				return "register_01";
			}else{
				HttpSession session = request.getSession();
				session.setAttribute("user1", user1);	
				return "register_02";
			}
		}	
	}
	
	
	@RequestMapping(value="/register_step3.htm", method = RequestMethod.GET)
	public String initializeForm3(@ModelAttribute("user") User user2, BindingResult result) {
		return "register_03";
	}
 
	@RequestMapping(value="/register_step3.htm" , method = RequestMethod.POST)
	public String createUserfrmStep2(@ModelAttribute("user") User user2,HttpServletRequest request, HttpServletResponse response,
				@RequestParam("photo") MultipartFile photo) {
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
				
				if(user2.getPhoto() != null){
		           String fileNameWithExt = System.currentTimeMillis() + user2.getPhoto().getOriginalFilename();
		           file = new File(path + fileNameWithExt);

		           
		           user2.getPhoto().transferTo(file);
		           FileChannel inputChannel = new FileInputStream(path + fileNameWithExt).getChannel();
		           FileChannel outputChannel = new FileOutputStream(path2 + fileNameWithExt).getChannel();
		           outputChannel.transferFrom(inputChannel, 0, inputChannel.size());
		           user2.setFileLocation(fileNameWithExt);
				}

				HttpSession session = request.getSession();
			    session.setAttribute("user2", user2);			    
				return "register_03";
			} catch (Exception e) {
				return "You failed to upload " + user2.getPhoto().getOriginalFilename() + " => " + e.getMessage();
			}
		} else {
			user2.setFileLocation("resources/images/nopicture.jpg");
			
			HttpSession session = request.getSession();
		    session.setAttribute("user2", user2);			    
			return "register_03";
		}
			
}

	@RequestMapping(value="/register_step4.htm", method = RequestMethod.GET)
	public String initializeForm4(@ModelAttribute("user") User user3, BindingResult result) {
		return "register_04";
	}
	
	@RequestMapping(value="/register_step4.htm" , method = RequestMethod.POST)
	public String createUserfrmStep3(@ModelAttribute("user") User user3,HttpServletRequest request, HttpServletResponse response,final SessionStatus status) {
		HttpSession session = request.getSession();
		session.setAttribute("user3", user3);
		return "register_04";
	}
	
	@RequestMapping(value="/register_step5.htm", method = RequestMethod.GET)
	public String initializeForm5(@ModelAttribute("user") User user4, BindingResult result) {
		return "register_05";
	}
	
	@RequestMapping(value="/register_step5.htm" , method = RequestMethod.POST)
	public String createUserfrmStep4(@ModelAttribute("user") User user4,HttpServletRequest request, HttpServletResponse response,final SessionStatus status) {
		HttpSession session = request.getSession();
		session.setAttribute("user4", user4);
		return "register_05";
	}
	
	@RequestMapping(value="/register_step6.htm", method = RequestMethod.GET)
	public String initializeForm6(@ModelAttribute("user") User user5, BindingResult result,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("user4")!= null) {
			return "register_06";
		}
		return "index";

	}
	
	@RequestMapping(value="/register_step6.htm" , method = RequestMethod.POST)
	public String createUserfrmStep5(@ModelAttribute("user") User user5,HttpServletRequest request, HttpServletResponse response,final SessionStatus status) {
		HttpSession session = request.getSession();
		session.setAttribute("user5", user5);
		return "register_06";
	}
	
	@RequestMapping(value="/register_step7.htm", method = RequestMethod.GET)
	public String initializeForm7(@ModelAttribute("user") User user6, BindingResult result,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("user5")!= null) {
			return "register_07";
		}
		return "index";

	}
	
	@RequestMapping(value="/register_step7.htm" , method = RequestMethod.POST)
	public String createUserfrmStep6(@ModelAttribute("user") User user6,HttpServletRequest request, HttpServletResponse response,final SessionStatus status) {
		
		HttpSession session = request.getSession();
		session.setAttribute("user6", user6);
		user6.setAuthority("user");
		user6.setEnabled(true);
		
		User user1 = (User) session.getAttribute("user1");
		User user2 = (User) session.getAttribute("user2");
		User user3 = (User) session.getAttribute("user3");
		User user4 = (User) session.getAttribute("user4");
		User user5 = (User) session.getAttribute("user5");
		User user66 = (User) session.getAttribute("user6");
		
		User uuu = null;
		try {

			UserDAO userDao = new UserDAO();	
			String userPassword = user1.getUserPassword();		
			PswProcess pswProcess = new PswProcess();
			
			try {
				String newUserPassword = pswProcess.md5Pwd(userPassword);
				user1.setUserPassword(newUserPassword);
				System.out.println("new password"+ newUserPassword);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			uuu = userDao.create(user1.getUserName(), user1.getUserPassword(), user6.isEnabled(), user6.getAuthority(),
					user1.getdOBmonth(), user1.getdOBday(), user1.getdOByear(), user1.getEmail(), user1.getGender(),
					user1.getSeekingGender(), user1.getCountry(), user1.getState(), user1.getCity(), user1.getPostalCode(),
					user2.getAboutMe1(), user2.getFileLocation(),
					user3.getHeight(), user3.getWeight(), user3.getStudiesEmphasis(), user3.getRelocateFlag(),
					user3.getHeadline(), user3.getOccupation(), user3.getOccupationDescription(), user3.getGrewUpIn(),
					user3.getZodiacSign(), user3.getLanguages(), user3.getRelationshipType(), user3.getMaritalStatus(),
					user3.getHairColor(), user3.getIncomeLevel(), user3.getEducationLeve(), user3.getBodyType(),
					user3.getAppearanceImportance(), user3.getReligion(), user3.getEyeColor(), user3.getEthnicity(),
					user3.getPoliticalOrientation(), user3.getIntelligenceImportance(), user3.getSmokingHabits(),
					user3.getActivityLevel(), user3.getCustody(), user3.getDrinkingHabits(), user3.getMoreChildrenFlag(),
					user3.getAboutMe2(),
					user4.getPersonalityTrait(), user4.getLeisureActivity(), user4.getPerfectMatchEssay(),
					user5.getCuisine(), user5.getMusic(), user5.getReading(), user5.getPerfectFirstDateEssay(),
					user6.getEntertainmentLocation(), user6.getPhysicalActivity(), user6.getIdealRelationshipEssay(),
					user6.getLearnFromThePastEssay());	
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		
		session.removeAttribute("user1");
		session.removeAttribute("user2");
		session.removeAttribute("user3");
		session.removeAttribute("user4");
		session.removeAttribute("user5");
		session.removeAttribute("user6");	
		session.invalidate();
		request.getSession().setAttribute("user7", uuu);
		return "register_07";
	}
	
	
	
	
}
