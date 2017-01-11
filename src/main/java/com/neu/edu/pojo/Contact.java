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
@Table(name="contactstable")
public class Contact {
	
	@Id
	@GeneratedValue
	@Column(name="ContactID",unique=true, nullable=false)   
	private long contactID;
	
	@Transient
    private String userName;
	
	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="UserName")
    private User user;
	
	@Column(name="ContactName")
    private String contactName;
	
	@Column(name="Comments")
    private String comments;
	
	@Column(name="DateAdded")
    private String dateAdded;

	
	
	public Contact(User user, String contactName, String comments, String dateAdded) {
		this.user = user;
		this.contactName = contactName;
		this.comments = comments;
		this.dateAdded = dateAdded;
	}

	public Contact(){
	}

	public long getContactID() {
		return contactID;
	}

	public void setContactID(long contactID) {
		this.contactID = contactID;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContactName() {
		return this.contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(String dateAdded) {
		this.dateAdded = dateAdded;
	}

	public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
	
}
