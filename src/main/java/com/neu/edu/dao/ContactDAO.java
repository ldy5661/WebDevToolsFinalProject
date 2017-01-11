package com.neu.edu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.Contact;
import com.neu.edu.pojo.User;

public class ContactDAO extends DAO{
	public Contact create(User user, String contactName, String comments, String dateAdded)
            throws AdException {
        try {
            begin();
            Contact contact = new Contact(user, contactName, comments, dateAdded);
            getSession().save(contact);
            commit();
            return contact;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create contact", e);
            throw new AdException("Exception while creating contact: " + e.getMessage());
        } finally {
			close();
		}
    }

    
    public void delete(long contactID)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Contact where contactID = :contactID");
            q.setParameter("contactID", contactID);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete contact", e);
        } finally {
			close();
		}
    }
    
    public void deleteUserContact(long userID)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Contact where userName = :userName");
            q.setParameter("userName", userID);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete user contact", e);
        } finally {
			close();
		}
    }
    
    public void deleteUserContactByContactName(String userName)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Contact where contactName = :contactName");
            q.setParameter("contactName", userName);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete user contact", e);
        } finally {
			close();
		}
    }
    
    public void updateComment(long contactID , String comments)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("update Contact c set c.comments =:comments where contactID = :contactID");
            q.setParameter("contactID", contactID);
            q.setString("comments", comments);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete contact", e);
        } finally {
			close();
		}
    }
    
    public boolean exists(User contactBeAddedUser, String contactName) throws AdException
	{
		Contact con = null;
		try{
			 begin();
			 Criteria crit = getSession().createCriteria(Contact.class);
			 crit.add(Restrictions.eq("user", contactBeAddedUser));
			 crit.add(Restrictions.eq("contactName", contactName));
			 crit.setMaxResults(1);
			 con = (Contact) crit.uniqueResult();
			 commit();
		} catch (HibernateException e) {
        	return false;
        }finally {
			close();
		}
		
		if(con != null){
            return true;
        }
            return false;
		
	}
    
    public List<Contact> listUserContact(User user) throws Exception
	{
 		try {
             begin();
             Criteria crit = getSession().createCriteria(Contact.class);
             crit.add(Restrictions.eq("user",user));
             List<Contact> contacts = crit.list();
             
             return contacts;
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
	}
}
