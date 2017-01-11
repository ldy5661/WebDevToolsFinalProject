package com.neu.edu.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.neu.edu.controller.PswProcess;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.User;

public class UserDAO extends DAO {

    public UserDAO() {
    }

    public User get(String userName)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("from User u where u.userName = :username");
            q.setString("username", userName);
            User user = (User) q.uniqueResult();
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not get user " + userName, e);
        }finally {
			close();
		}
    }
    
    @SuppressWarnings("unchecked")
	public List<User> getAllUser() throws AdException {
    	try {
            begin();
            commit();
            return getSession().createQuery("from User u where u.authority ='user'").list();        
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not get All user"+ e.getMessage());
        }finally {
			close();
		}
	}

    public User create(String userName, String userPassword, boolean enabled, String authority, int dOBmonth,
			int dOBday, int dOByear, String email, String gender, String seekingGender, String country, String state,
			String city, String postalCode, String aboutMe1, String fileLocation, String height, Double weight,
			String studiesEmphasis, String relocateFlag, String headline, String occupation,
			String occupationDescription, String grewUpIn, String zodiacSign, String languages, String relationshipType,
			String maritalStatus, String hairColor, String incomeLevel, String educationLeve, String bodyType,
			String appearanceImportance, String religion, String eyeColor, String ethnicity,
			String politicalOrientation, String intelligenceImportance, String smokingHabits, String activityLevel,
			String custody, String drinkingHabits, String moreChildrenFlag, String aboutMe2, String personalityTrait,
			String leisureActivity, String perfectMatchEssay, String cuisine, String music, String reading,
			String perfectFirstDateEssay, String entertainmentLocation, String physicalActivity,
			String idealRelationshipEssay, String learnFromThePastEssay)
            throws AdException {
        try {
            begin();
            System.out.println("inside DAO");
            User user=new User(userName,userPassword,enabled, authority, dOBmonth,dOBday,dOByear,email,
      			  gender,seekingGender,country,state,city,postalCode,
    			  aboutMe1,fileLocation,height,weight,studiesEmphasis,
    			  relocateFlag,headline,occupation,occupationDescription,grewUpIn,
    			  zodiacSign,languages,relationshipType,maritalStatus,hairColor,
    			  incomeLevel,educationLeve,bodyType,appearanceImportance,religion,
    			  eyeColor,ethnicity,politicalOrientation,intelligenceImportance,
    			  smokingHabits,activityLevel,custody,drinkingHabits,moreChildrenFlag,
    			  aboutMe2,personalityTrait,leisureActivity,perfectMatchEssay,cuisine,
    			  music,reading,perfectFirstDateEssay,entertainmentLocation,
    			  physicalActivity,idealRelationshipEssay,learnFromThePastEssay);
            
            getSession().save(user);
            
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create user " + userName, e);
            throw new AdException("Exception while creating user: " + e.getMessage());
        }finally {
			close();
		}
    }

    public void delete(User user)
            throws AdException {
        try {
            begin();
            getSession().delete(user);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete user " + user.getUserName(), e);
        }
    }
    
//use Restrictions with Criteria to retrieve data 
	public boolean exists(String userName) throws AdException
	{
		User user = null;
		try{
			 begin();
			 Criteria crit = getSession().createCriteria(User.class);
			 crit.add(Restrictions.eq("userName", userName));
			 crit.setMaxResults(1);
			 user = (User) crit.uniqueResult();
			 commit();
		} catch (HibernateException e) {
        	return false;
        }finally {
			close();
		}
		
		if(user != null){
            return true;
        }
            return false;
		
	}
	

	public User isValidUser(String userName, String userPassword) throws Exception
	{
		User user = null;
		PswProcess pswProcess = new PswProcess();
		String newUserPassword = pswProcess.md5Pwd(userPassword);
 		try {
             begin();
             Query q = getSession().createQuery("from User where userName = :userName and userPassword =:userPassword");
             q.setString("userName", userName);
             q.setString("userPassword", newUserPassword);           
             user = (User) q.uniqueResult();
             
             System.out.println("resultset:"+user);
             System.out.println("dao check new password:"+newUserPassword);
             
         } catch (HibernateException e) {
	         	return null;
//	         	throw new AdException("Username or password is invalid", e);
         }finally {
			close();
		 }
 		
 		return user;
	
	}
	

	public void updateUser(User user) throws AdException{
		System.out.println("in userdao about me :"+user.getAboutMe1());
        try {
        	begin();
//        	user.setUserID(user2.getUserID());
//        	user.setUserName(user2.getUserName());
//        	user.setUserPassword(user2.getUserPassword());
        	getSession().saveOrUpdate(user);
//        	Query query = getSession().createQuery("update User u set u.aboutMe1 =:aboutMe1 where u.userID =:userId");
//        	query.setParameter("aboutMe1", user.getAboutMe1());
//        	query.setParameter("userId", user2.);
//        	int result = query.executeUpdate();
//        	System.out.println(result);
//            System.out.println("test update user dao:"+ user2);
            
            commit();
        } catch (HibernateException e) {
//            rollback();
            throw new AdException("Could not update user " + user.getUserName(), e);
        }finally {	
			close();
		}
    }
	
	public void changePassword(String userName,String password) throws AdException{
        try {
        	begin();
        	Query query = getSession().createQuery("update User u set u.userPassword =:userPassword where u.userName =:userName");
        	query.setParameter("userPassword", password);
        	query.setParameter("userName", userName);
        	int result = query.executeUpdate();
        	System.out.println(result);
            
            commit();
        } catch (HibernateException e) {
            throw new AdException("Could not update password " + e);
        }finally {	
			close();
		}
    }
	
	public User lookupUserByID(long userID) throws Exception
	{
		User user = null;
 		try {
             begin();
             Query q = getSession().createQuery("from User where userID = :userID");
             q.setParameter("userID",userID);         
             user = (User) q.uniqueResult();
             System.out.println("resultset:"+user);         
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
 		return user;
	}
	
	public List<User> lookupUserByName(String userName) throws Exception
	{
//		List<User> user = null;
 		try {
             begin();
             Criteria crit = getSession().createCriteria(User.class);
             crit.add(Restrictions.ilike("userName",userName, MatchMode.ANYWHERE));
             List<User> users = crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
//             users.get(1).getUserName();
             return users;
             //System.out.println("resultset:"+users.size());
             //System.out.println("search"+userName);
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
	}
	
	public User lookupUserByUserName(String userName) throws Exception
	{
		User user = null;
 		try {
             begin();
             Query q = getSession().createQuery("from User where userName = :userName");
             q.setParameter("userName",userName);         
             user = (User) q.uniqueResult();
             System.out.println("resultset:"+user);         
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
 		return user;
	}
	
	public List<User> quickSearchUser(String gender, String seekingGender, 
			int ageMin, int ageMax, String country, String state, String city) throws Exception
	{
//		List<User> user = null;
		Calendar today = Calendar.getInstance();
		int maxDobYear = today.get(Calendar.YEAR) - ageMin;
		int minDobYear = today.get(Calendar.YEAR) - ageMax;
 		try {
             begin();	
 				
             Criteria crit = getSession().createCriteria(User.class);
             crit.add(Restrictions.lt("dOByear",maxDobYear));
             crit.add(Restrictions.gt("dOByear",minDobYear));
             crit.add(Restrictions.eq("gender",gender));
             crit.add(Restrictions.eq("seekingGender",seekingGender));
             crit.add(Restrictions.eq("country",country));
             crit.add(Restrictions.ilike("state",state,MatchMode.ANYWHERE));
             crit.add(Restrictions.ilike("city",city,MatchMode.ANYWHERE));
             List<User> users = crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
             return users;
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
	}

    
}