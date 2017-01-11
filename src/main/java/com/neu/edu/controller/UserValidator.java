package com.neu.edu.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.neu.edu.pojo.User;

public class UserValidator implements Validator{
	private Pattern pattern;  
	private Matcher matcher; 
	private static final String userName_Pattern = "^[A-Za-z0-9_-]{2,25}$";
			String email_Pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"  
			   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"; 
			String password_Pattern = "^[a-zA-Z]\\w{3,100}$"; 
			String numeric_Pattern = "[0-9]{5}"; 
			
	

	public boolean supports(Class aClass)
    {
        return aClass.equals(User.class);
    }

    public void validate(Object obj, Errors errors)
    {
        User user = (User) obj;
        
        
        Calendar today = Calendar.getInstance();  
        int age = today.get(Calendar.YEAR) - user.getdOByear();
        
        if( age < 18){
        	errors.rejectValue("dOByear", "dOByear.notvaild", "You must be at least 18 years old to register");
        }
        
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "error.invalid.user", "UserName Required");
        
        if (user.getUserName() != null && !(user.getUserName().isEmpty())) {  
        	   pattern = Pattern.compile(userName_Pattern);  
        	   matcher = pattern.matcher(user.getUserName());  
        	   if (!matcher.matches()) {  
        	    errors.rejectValue("userName", 
        	      "Your UserName Must between 2-25 characterors and can not special character except '_','-','$'");  
        	   }  
        }  
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPassword", "error.invalid.password", "Password Required");
        
        if (user.getUserPassword() != null && !(user.getUserPassword().isEmpty())) {  
     	   pattern = Pattern.compile(password_Pattern);  
     	   matcher = pattern.matcher(user.getUserPassword());  
     	   if (!matcher.matches()) {  
     	    errors.rejectValue("userPassword", "userPassword.invalid.patternError",  
     	      "The password's first character must be a letter, "
     	      + "it must contain at least 4 characters and no more than 16 characters "
     	      + "and no characters other than letters, numbers and the underscore may be used");  
     	   }  
        }  
        
        if (!user.getUserPassword().equals(user.getConfirmPassword())) {  
        	   errors.rejectValue("confirmPassword", "password.mismatch",  
        	     "Password does not match");  
        }  ///confirmPassword not bind right now
        	  
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.invalid.email.emailId", "Email Required");
        
        if (user.getEmail() != null && !(user.getEmail().isEmpty())) {  
        	   pattern = Pattern.compile(email_Pattern);  
        	   matcher = pattern.matcher(user.getEmail());  
        	   if (!matcher.matches()) {  
        	    errors.rejectValue("email", "email.invalid.patternError",  
        	      "Please Enter a correct email");  
        	   }  
        }  
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "error.invalid.country", "Country Requiered");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state", "error.invalid.state", "State Requiered");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "error.invalid.city", "City Requiered");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "postalCode", "error.invalid.postalCode", "PostalCode Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.invalid.gender", "Select your gender");
        
        if (user.getPostalCode() != null && !(user.getPostalCode().isEmpty())) {  
     	   pattern = Pattern.compile(numeric_Pattern);  
     	   matcher = pattern.matcher(user.getPostalCode());  
     	   if (!matcher.matches()) {  
     	    errors.rejectValue("postalCode", "postalCode.invalid.patternError",  
     	      "Please Enter a correct postalcode");  
     	   }  
     }  
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "seekingGender", "error.invalid.seekingGender", "Select your Seeking Gender");

    }
    
    
}
