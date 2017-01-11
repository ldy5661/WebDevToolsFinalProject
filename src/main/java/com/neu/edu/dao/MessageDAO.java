package com.neu.edu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.neu.edu.dao.DAO;
import com.neu.edu.exception.AdException;
import com.neu.edu.pojo.Contact;
import com.neu.edu.pojo.Message;
import com.neu.edu.pojo.User;;

public class MessageDAO extends DAO{
    public Message create(User user, String fromUser, String message, String messageDate)
            throws AdException {
        try {
            begin();
            Message msg = new Message(user, fromUser, message, messageDate);
            getSession().save(msg);
            commit();
            return msg;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create message", e);
            throw new AdException("Exception while creating message: " + e.getMessage());
        }
    }

    public void delete(long messageID)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Message where messageID = :messageID");
            q.setParameter("messageID", messageID);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete message", e);
        } finally {
			close();
		}
    }
    
    public void deleteUserMessage(Long userID)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Message where userName = :userName");
            q.setParameter("userName",userID);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete user message", e);
        } finally {
			close();
		}
    }
    
    public void deleteUserMessageByFromUserName(String userName)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("delete from Message where fromUser = :fromUser");
            q.setParameter("fromUser",userName);
            q.executeUpdate();
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete user message", e);
        } finally {
			close();
		}
    }
    
    public List<Message> listUserMessage(User user) throws Exception
	{
 		try {
             begin();
             Criteria crit = getSession().createCriteria(Message.class);
             crit.add(Restrictions.eq("user",user));
             List<Message> messages = crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();          
             return messages;
         } catch (HibernateException e) {
	         	return null;
         }finally {
			close();
		 }
	}
    
}
