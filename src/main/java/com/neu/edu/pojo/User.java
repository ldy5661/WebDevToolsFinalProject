package com.neu.edu.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;




/**
 * @author dongyueli
 *
 */
@Entity
@Table(name="userstable")
public class User {
	
	@Id
	@GeneratedValue
	@Column(name="UserID",unique=true, nullable=false)   
	private long userID;    
	
	@Column(name="UserName")
	@NotBlank
	@Size(min=2, max=25)
	private String userName;
	
	@Column(name="UserPassword")
	@NotBlank
	@Size(min=4, max=50)
	private String userPassword;
	
	@Transient
	private String confirmPassword;
	
	@Column(name = "enabled",nullable = false,columnDefinition = "TINYINT")
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean enabled = true;
	
	@Column(name = "authority")
	private String authority;
	
	@Column(name="DOBmonth")
	private int dOBmonth;
	
	@Column(name="DOBday")
	private int dOBday;
	
	@Column(name="DOByear")
	private int dOByear;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="SeekingGender")
	private String seekingGender;
	
	@Column(name="Country")
	private String country;
	
	@Column(name="State")
	private String state;
	
	@Column(name="City")
	private String city;
	
	@Column(name="PostalCode")
	private String postalCode;
	
	@Column(name="AboutMe1")
	private String aboutMe1;
	
	@Column(name="FileLocation")
	private String fileLocation;
	
	@Transient
	private MultipartFile photo;
	
	@Column(name="Height")
	private String height;
	
	@Column(name="Weight")
	private Double weight;
	
	@Column(name="StudiesEmphasis")
	private String studiesEmphasis;
	
	@Column(name="RelocateFlag")
	private String relocateFlag;
	
	@Column(name="Headline")
	private String headline;
	
	@Column(name="Occupation")
	private String occupation;
	
	@Column(name="OccupationDescription")
	private String occupationDescription;
	
	@Column(name="GrewUpIn")
	private String grewUpIn;
	
	@Column(name="ZodiacSign")
	private String zodiacSign;
	
	@Column(name="Languages")
	private String languages;
	
	@Column(name="RelationshipType")
	private String relationshipType;
	
	@Column(name="MaritalStatus")
	private String maritalStatus;
	
	@Column(name="HairColor")
	private String hairColor;
	
	@Column(name="IncomeLevel")
	private String incomeLevel;
	
	@Column(name="EducationLeve")
	private String educationLeve;
	
	@Column(name="BodyType")
	private String bodyType;
	
	@Column(name="AppearanceImportance")
	private String appearanceImportance;
	
	@Column(name="Religion")
	private String religion;
	
	@Column(name="EyeColor")
	private String eyeColor;
	
	@Column(name="Ethnicity")
	private String ethnicity;
	
	@Column(name="PoliticalOrientation")
	private String politicalOrientation;
	
	@Column(name="IntelligenceImportance")
	private String intelligenceImportance;
	
	@Column(name="SmokingHabits")
	private String smokingHabits;
	
	@Column(name="ActivityLevel")
	private String activityLevel;
	
	@Column(name="Custody")
	private String custody;
	
	@Column(name="DrinkingHabits")
	private String drinkingHabits;
	
	@Column(name="MoreChildrenFlag")
	private String moreChildrenFlag;
	
	@Column(name="AboutMe2")
	private String aboutMe2;
	
	@Column(name="PersonalityTrait")
	private String personalityTrait;
	
	@Column(name="LeisureActivity")
	private String leisureActivity;
	
	@Column(name="PerfectMatchEssay")
	private String perfectMatchEssay;
	
	@Column(name="Cuisine")
	private String cuisine;
	
	@Column(name="Music")
	private String music;
	
	@Column(name="Reading")
	private String reading;
	
	@Column(name="PerfectFirstDateEssay")
	private String perfectFirstDateEssay;
	
	@Column(name="EntertainmentLocation")
	private String entertainmentLocation;
	
	@Column(name="PhysicalActivity")
	private String physicalActivity;
	
	@Column(name="IdealRelationshipEssay")
	private String idealRelationshipEssay;
	
	@Column(name="LearnFromThePastEssay")
	private String learnFromThePastEssay;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="user")
	private Set<Contact> contacts = new HashSet<Contact>();
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
	private Set<Message> messages = new HashSet<Message>();
	
		
	
	public User(String userName, String userPassword, boolean enabled, String authority, int dOBmonth,
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
			String idealRelationshipEssay, String learnFromThePastEssay) {

		this.userName = userName;
		this.userPassword = userPassword;
		this.enabled = enabled;
		this.authority = authority;
		this.dOBmonth = dOBmonth;
		this.dOBday = dOBday;
		this.dOByear = dOByear;
		this.email = email;
		this.gender = gender;
		this.seekingGender = seekingGender;
		this.country = country;
		this.state = state;
		this.city = city;
		this.postalCode = postalCode;
		this.aboutMe1 = aboutMe1;
		this.fileLocation = fileLocation;
		this.height = height;
		this.weight = weight;
		this.studiesEmphasis = studiesEmphasis;
		this.relocateFlag = relocateFlag;
		this.headline = headline;
		this.occupation = occupation;
		this.occupationDescription = occupationDescription;
		this.grewUpIn = grewUpIn;
		this.zodiacSign = zodiacSign;
		this.languages = languages;
		this.relationshipType = relationshipType;
		this.maritalStatus = maritalStatus;
		this.hairColor = hairColor;
		this.incomeLevel = incomeLevel;
		this.educationLeve = educationLeve;
		this.bodyType = bodyType;
		this.appearanceImportance = appearanceImportance;
		this.religion = religion;
		this.eyeColor = eyeColor;
		this.ethnicity = ethnicity;
		this.politicalOrientation = politicalOrientation;
		this.intelligenceImportance = intelligenceImportance;
		this.smokingHabits = smokingHabits;
		this.activityLevel = activityLevel;
		this.custody = custody;
		this.drinkingHabits = drinkingHabits;
		this.moreChildrenFlag = moreChildrenFlag;
		this.aboutMe2 = aboutMe2;
		this.personalityTrait = personalityTrait;
		this.leisureActivity = leisureActivity;
		this.perfectMatchEssay = perfectMatchEssay;
		this.cuisine = cuisine;
		this.music = music;
		this.reading = reading;
		this.perfectFirstDateEssay = perfectFirstDateEssay;
		this.entertainmentLocation = entertainmentLocation;
		this.physicalActivity = physicalActivity;
		this.idealRelationshipEssay = idealRelationshipEssay;
		this.learnFromThePastEssay = learnFromThePastEssay;
		this.contacts = new HashSet<Contact>();
		this.messages = new HashSet<Message>();
	}

	User() {    ////////////原来没有public
    }

	public long getUserID() {
		return userID;
	}

	public void setUserID(long userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public int getdOBmonth() {
		return dOBmonth;
	}

	public void setdOBmonth(int dOBmonth) {
		this.dOBmonth = dOBmonth;
	}

	public int getdOBday() {
		return dOBday;
	}

	public void setdOBday(int dOBday) {
		this.dOBday = dOBday;
	}

	public int getdOByear() {
		return dOByear;
	}

	public void setdOByear(int dOByear) {
		this.dOByear = dOByear;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getSeekingGender() {
		return seekingGender;
	}

	public void setSeekingGender(String seekingGender) {
		this.seekingGender = seekingGender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAboutMe1() {
		return aboutMe1;
	}

	public void setAboutMe1(String aboutMe1) {
		this.aboutMe1 = aboutMe1;
	}

	public String getFileLocation() {
		return fileLocation;
	}

	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getStudiesEmphasis() {
		return studiesEmphasis;
	}

	public void setStudiesEmphasis(String studiesEmphasis) {
		this.studiesEmphasis = studiesEmphasis;
	}

	public String getRelocateFlag() {
		return relocateFlag;
	}

	public void setRelocateFlag(String relocateFlag) {
		this.relocateFlag = relocateFlag;
	}

	public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getOccupationDescription() {
		return occupationDescription;
	}

	public void setOccupationDescription(String occupationDescription) {
		this.occupationDescription = occupationDescription;
	}

	public String getGrewUpIn() {
		return grewUpIn;
	}

	public void setGrewUpIn(String grewUpIn) {
		this.grewUpIn = grewUpIn;
	}

	public String getZodiacSign() {
		return zodiacSign;
	}

	public void setZodiacSign(String zodiacSign) {
		this.zodiacSign = zodiacSign;
	}

	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	public String getRelationshipType() {
		return relationshipType;
	}

	public void setRelationshipType(String relationshipType) {
		this.relationshipType = relationshipType;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getHairColor() {
		return hairColor;
	}

	public void setHairColor(String hairColor) {
		this.hairColor = hairColor;
	}

	public String getIncomeLevel() {
		return incomeLevel;
	}

	public void setIncomeLevel(String incomeLevel) {
		this.incomeLevel = incomeLevel;
	}

	public String getEducationLeve() {
		return educationLeve;
	}

	public void setEducationLeve(String educationLeve) {
		this.educationLeve = educationLeve;
	}

	public String getBodyType() {
		return bodyType;
	}

	public void setBodyType(String bodyType) {
		this.bodyType = bodyType;
	}

	public String getAppearanceImportance() {
		return appearanceImportance;
	}

	public void setAppearanceImportance(String appearanceImportance) {
		this.appearanceImportance = appearanceImportance;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getEyeColor() {
		return eyeColor;
	}

	public void setEyeColor(String eyeColor) {
		this.eyeColor = eyeColor;
	}

	public String getEthnicity() {
		return ethnicity;
	}

	public void setEthnicity(String ethnicity) {
		this.ethnicity = ethnicity;
	}

	public String getPoliticalOrientation() {
		return politicalOrientation;
	}

	public void setPoliticalOrientation(String politicalOrientation) {
		this.politicalOrientation = politicalOrientation;
	}

	public String getIntelligenceImportance() {
		return intelligenceImportance;
	}

	public void setIntelligenceImportance(String intelligenceImportance) {
		this.intelligenceImportance = intelligenceImportance;
	}

	public String getSmokingHabits() {
		return smokingHabits;
	}

	public void setSmokingHabits(String smokingHabits) {
		this.smokingHabits = smokingHabits;
	}

	public String getActivityLevel() {
		return activityLevel;
	}

	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}

	public String getCustody() {
		return custody;
	}

	public void setCustody(String custody) {
		this.custody = custody;
	}

	public String getDrinkingHabits() {
		return drinkingHabits;
	}

	public void setDrinkingHabits(String drinkingHabits) {
		this.drinkingHabits = drinkingHabits;
	}

	public String getMoreChildrenFlag() {
		return moreChildrenFlag;
	}

	public void setMoreChildrenFlag(String moreChildrenFlag) {
		this.moreChildrenFlag = moreChildrenFlag;
	}

	public String getAboutMe2() {
		return aboutMe2;
	}

	public void setAboutMe2(String aboutMe2) {
		this.aboutMe2 = aboutMe2;
	}

	public String getPersonalityTrait() {
		return personalityTrait;
	}

	public void setPersonalityTrait(String personalityTrait) {
		this.personalityTrait = personalityTrait;
	}

	public String getLeisureActivity() {
		return leisureActivity;
	}

	public void setLeisureActivity(String leisureActivity) {
		this.leisureActivity = leisureActivity;
	}

	public String getPerfectMatchEssay() {
		return perfectMatchEssay;
	}

	public void setPerfectMatchEssay(String perfectMatchEssay) {
		this.perfectMatchEssay = perfectMatchEssay;
	}

	public String getCuisine() {
		return cuisine;
	}

	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getReading() {
		return reading;
	}

	public void setReading(String reading) {
		this.reading = reading;
	}

	public String getPerfectFirstDateEssay() {
		return perfectFirstDateEssay;
	}

	public void setPerfectFirstDateEssay(String perfectFirstDateEssay) {
		this.perfectFirstDateEssay = perfectFirstDateEssay;
	}

	public String getEntertainmentLocation() {
		return entertainmentLocation;
	}

	public void setEntertainmentLocation(String entertainmentLocation) {
		this.entertainmentLocation = entertainmentLocation;
	}

	public String getPhysicalActivity() {
		return physicalActivity;
	}

	public void setPhysicalActivity(String physicalActivity) {
		this.physicalActivity = physicalActivity;
	}

	public String getIdealRelationshipEssay() {
		return idealRelationshipEssay;
	}

	public void setIdealRelationshipEssay(String idealRelationshipEssay) {
		this.idealRelationshipEssay = idealRelationshipEssay;
	}

	public String getLearnFromThePastEssay() {
		return learnFromThePastEssay;
	}

	public void setLearnFromThePastEssay(String learnFromThePastEssay) {
		this.learnFromThePastEssay = learnFromThePastEssay;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public Set<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(Set<Contact> contacts) {
		this.contacts = contacts;
	}
	
	public void addContacts(Contact contact) {
			getContacts().add(contact);
	}
	
	public void removeContacts(Contact contact) {
			getContacts().remove(contact);
	}

	public Set<Message> getMessages() {
		return messages;
	}

	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	
	public void addMessages(Message message) {
		getMessages().add(message);
	}

	public MultipartFile getPhoto() {
		return photo;
	}

	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}

	public String getConfirmPassword() {   ///not include in public user now
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	
}
