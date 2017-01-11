package com.neu.edu.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="messagestable")
public class Message {

	@Id
	@GeneratedValue
	@Column(name="MessageID",unique=true, nullable=false)   
	private long messageID;
	
	@Transient
    private String userName;
	
	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="UserName")
    private User user;
		
	@Column(name="FromUser")
    private String fromUser;
	
	@Column(name="Message")
    private String message;
	
	@Column(name="MessageDate")
    private String messageDate;

	
	public Message(User user, String fromUser, String message, String messageDate) {
		this.user = user;
		this.fromUser = fromUser;
		this.message = message;
		this.messageDate = messageDate;
	}

	public Message() {
    }

	public long getMessageID() {
		return messageID;
	}

	public void setMessageID(long messageID) {
		this.messageID = messageID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getFromUser() {
		return fromUser;
	}

	public void setFromUser(String fromUser) {
		this.fromUser = fromUser;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}

	
	
	
	
	
	
}
