package com.neu.edu.controller;

import java.security.MessageDigest;

public class PswProcess {
	public String md5Pwd(String originalPwd) throws Exception{
		MessageDigest md = null;
	    try {  	
		    	md = MessageDigest.getInstance("MD5");
				md.reset();
				md.update(originalPwd.getBytes());
				byte[] digest = md.digest();
				StringBuffer sb = new StringBuffer();
		        for (int i = 0; i < digest.length; i++) {
			        sb.append(Integer.toString((digest[i] & 0xff) + 0x100, 16).substring(1));  
		        }
		        return sb.toString();
	    }
	    catch (java.security.NoSuchAlgorithmException e) {
	        e.printStackTrace();
	    }
	    
	    return null;
	}
}
