<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register_05</title>
<script language="JavaScript" src="resources/javascript/matchnet.js"></script>
<script language="JavaScript" src="resources/javascript/region3.js"></script>
<script language="JavaScript" src="resources/is/im.js"></script>
<link rel="stylesheet" type="text/css" href="resources/lib/css/as.css">
<link rel="stylesheet" type="text/css" href="resources/lib/css/common.css">
</head>
<body marginheight=0 marginwidth=0 topmargin=0 leftmargin=0 text="#000000" bgcolor="#ffffff"  >
<table bgcolor="#EFEFFF" border=2 cellspacing=2 cellpadding=2>
<TR>
   <TD>You have entered: </TD>
</TR>

<TR>
   <TD>
      <B>User Name: </B><I><c:out value="${sessionScope.user1.userName}" /></I><BR>
      <B>Password: </B><I><c:out value="${sessionScope.user1.userPassword}" /></I><BR>
      <B>Date of Birth: </B><I><c:out value="${sessionScope.user1.dOBmonth}" />/<c:out value="${sessionScope.user1.dOBday}" />/<c:out value="${sessionScope.user1.dOByear}" /></I><BR>
      <B>Email: </B><I><c:out value="${sessionScope.user1.email}" /></I><BR>
      <B>Gender: </B><I><c:out value="${sessionScope.user1.gender}" /></I><BR>
      <B>Seeking: </B><I><c:out value="${sessionScope.user1.seekingGender}" /></I><BR>
      <B>Country: </B><I><c:out value="${sessionScope.user1.country}" /></I><BR>
      <B>State: </B><I><c:out value="${sessionScope.user1.state}" /></I><BR>
      <B>City: </B><I><c:out value="${sessionScope.user1.city}" /></I><BR>
      <B>Zip: </B><I><c:out value="${sessionScope.user1.postalCode}" /></I><BR>
      <B>About Me: </B><I><c:out value="${sessionScope.user2.aboutMe1}" /></I><BR>
      <B>Upload Picture: </B><I><c:out value="${sessionScope.user2.fileLocation}" /></I><BR>
   </TD>

   <TD>
      <B>Height: </B><I><c:out value="${sessionScope.user3.height}" /> cm</I><BR>
      <B>Weight: </B><I><c:out value="${sessionScope.user3.weight}" /> grams</I><BR>
      <B>Emphasis Of Studies: </B><I><c:out value="${sessionScope.user3.studiesEmphasis}" /></I><BR>
      <B>Relocate for the right person: </B><I><c:out value="${sessionScope.user3.relocateFlag}" /></I><BR>
      <B>Profile Headline: </B><I><c:out value="${sessionScope.user3.headline}" /></I><BR>
      <B>Occupation: </B><I><c:out value="${sessionScope.user3.occupation}" /></I><BR>
      <B>Occupation Description: </B><I><c:out value="${sessionScope.user3.occupationDescription}" /></I><BR>
      <B>Area I Grew Up In: </B><I><c:out value="${sessionScope.user3.grewUpIn}" /></I><BR>
      <B>Zodiac Sign: </B><I><c:out value="${sessionScope.user3.zodiacSign}" /></I><BR>
      <B>Languages I speak: </B><I><c:out value="${sessionScope.user3.languages}" /></I><BR>
      <B>I am seeking: </B><I><c:out value="${sessionScope.user3.relationshipType}" /></I><BR>
      <B>Marital Status: </B><I><c:out value="${sessionScope.user3.maritalStatus}" /></I><BR>
   </TD>

   <TD>
      <B>Hair Color: </B><I><c:out value="${sessionScope.user3.hairColor}" /></I><BR>
      <B>Annual Income: </B><I><c:out value="${sessionScope.user3.incomeLevel}" /></I><BR>
      <B>Education Level: </B><I><c:out value="${sessionScope.user3.educationLeve}" /></I><BR>
      <B>Body Build: </B><I><c:out value="${sessionScope.user3.bodyType}" /></I><BR>
      <B>How important is appearance: </B><I><c:out value="${sessionScope.user3.appearanceImportance}" /></I><BR>
      <B>Religion: </B><I><c:out value="${sessionScope.user3.religion}" /></I><BR>
      <B>Eye Color: </B><I><c:out value="${sessionScope.user3.eyeColor}" /></I><BR>
      <B>Ethnicity: </B><I><c:out value="${sessionScope.user3.ethnicity}" /></I><BR>
      <B>Political View: </B><I><c:out value="${sessionScope.user3.politicalOrientation}" /></I><BR>
      <B>Intelligence: </B><I><c:out value="${sessionScope.user3.intelligenceImportance}" /></I><BR>
      <B>Smoking Habits: </B><I><c:out value="${sessionScope.user3.smokingHabits}" /></I><BR>
      <B>Activity Level: </B><I><c:out value="${sessionScope.user3.activityLevel}" /></I><BR>
      <B>Children: </B><I><c:out value="${sessionScope.user3.custody}" /></I><BR>
      <B>Drinking Habits: </B><I><c:out value="${sessionScope.user3.drinkingHabits}" /></I><BR>
      <B>Want Children: </B><I><c:out value="${sessionScope.user3.moreChildrenFlag}" /></I><BR>
      <B>Personality: </B><I><c:out value="${sessionScope.user3.aboutMe2}" /></I><BR>
   </TD> 
   <TD>
	  <B>Personality Trait: </B><I><c:out value="${sessionScope.user4.personalityTrait}"/></I><BR>
      <B>Favorite Activities: </B><I><c:out value="${sessionScope.user4.leisureActivity}"/></I><BR>
      <B>About the person I am looking for: </B><I><c:out value="${sessionScope.user4.perfectMatchEssay}"/></I><BR>
   </TD>
</TR>
</TABLE>



<table cellspacing="0" cellpadding="0" border="0" >
	<tr>
		<td valign="top">
			<table width="645" border='0' cellspacing="0" cellpadding="0" >
				<tr>
					<td class="message">
						<table width="100%" class="message" cellpadding="0" cellspacing="0" >
							<tr>
								<td>
									<table width="100%" cellpadding="0" cellspacing="0" >
										<tr>
											<td>
												<table width="100%" border='5' cellpadding="5" cellspacing="5" >
													<tr>
														<td>
                                                        	<img src="resources/images/page_message.gif" width="20" height="20"></td>
														<td class="message" >Saved Step 3</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<a name="Interests"></a><br>
			<table width="100%" border='5' cellpadding="5" cellspacing="5" >
				<form:form name="step4form" method="post" commandName="user" action="register_step6.htm">
					<tr>
						<td colspan="3"><img src="resources/images/topline.gif" width="369" height="26" border="0"></td>
					</tr>
					
					<tr>
						<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
		
					<tr>
						<td colspan=3 class="stdBold">Your Favorite Cuisines:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td>
										<form:checkbox path="cuisine" value="American" /> American<br>
										<form:checkbox path="cuisine" value="Barbecue" /> Barbecue<br>
										<form:checkbox path="cuisine" value="Cajun/Southern" /> Cajun/Southern<br>
										<form:checkbox path="cuisine" value="California-Fusion" /> California-Fusion<br>
										<form:checkbox path="cuisine" value="Caribbean/Cuban" /> Caribbean/Cuban<br>
										<form:checkbox path="cuisine" value="Chinese/Dim Sum" /> Chinese/Dim Sum<br>
										<form:checkbox path="cuisine" value="Continental" /> Continental<br>
										<form:checkbox path="cuisine" value="Deli" /> Deli<br>
										<form:checkbox path="cuisine" value="Eastern-European" /> Eastern-European<br>
										<form:checkbox path="cuisine" value="Fast Food/Pizza" /> Fast Food/Pizza<br>
									</td>

									<td class="default" valign="top">
										<form:checkbox path="cuisine" value="French" /> French<br>
										<form:checkbox path="cuisine" value="German" /> German<br>
										<form:checkbox path="cuisine" value="Greek" /> Greek<br>
										<form:checkbox path="cuisine" value="Indian" /> Indian<br>
										<form:checkbox path="cuisine" value="Italian" /> Italian<br>
										<form:checkbox path="cuisine" value="Japanese/Sushi" /> Japanese/Sushi<br>
										<form:checkbox path="cuisine" value="Jewish/Kosher" /> Jewish/Kosher<br>
										<form:checkbox path="cuisine" value="Korean" /> Korean<br>
										<form:checkbox path="cuisine" value="Mediterranean" /> Mediterranean<br>
										<form:checkbox path="cuisine" value="Mexican" /> Mexican<br>
									</td>

									<td class="default" valign="top">
										<form:checkbox path="cuisine" value="Middle Eastern" /> Middle Eastern<br>
										<form:checkbox path="cuisine" value="Seafood" /> Seafood<br>
										<form:checkbox path="cuisine" value="Soul Food" /> Soul Food<br>
										<form:checkbox path="cuisine" value="South American" /> South American<br>
										<form:checkbox path="cuisine" value="Southwestern" /> Southwestern<br>
										<form:checkbox path="cuisine" value="Spanish" /> Spanish<br>
										<form:checkbox path="cuisine" value="Thai" /> Thai<br>
										<form:checkbox path="cuisine" value="Vegetarian/Organic" /> Vegetarian/Organic<br>
										<form:checkbox path="cuisine" value="Vegan" /> Vegan<br>
										<form:checkbox path="cuisine" value="Vietnamese" /> Vietnamese<br>
									</td>

									<td class="default" valign="top"></td>
								</tr>
							</table>
			</td>
		</tr>
		
		<tr>
			<td colspan=3>&nbsp;</td>
		</tr>
		
		<tr>
			<td colspan=3 class="stdBold">Your Favorite Music:</td>
		</tr>
		
		<tr>
			<td colspan=3>&nbsp;
				<table cellpadding="0" cellspacing="0" >
					<tr>
						<td>
							<form:checkbox path="music" value="Alternative" /> Alternative<br>
							<form:checkbox path="music" value="Big Band/Swing" /> Big Band/Swing<br>
							<form:checkbox path="music" value="Blues" /> Blues<br>
							<form:checkbox path="music" value="Christian & Gospel" /> Christian & Gospel<br>
							<form:checkbox path="music" value="Classic Rock n Roll" /> Classic Rock n' Roll<br>
							<form:checkbox path="music" value="Classical" /> Classical<br>
							<form:checkbox path="music" value="Country" /> Country<br>
							<form:checkbox path="music" value="Dance/Electronica" /> Dance/Electronica<br>
							<form:checkbox path="music" value="Disco" /> Disco<br>
							<form:checkbox path="music" value="Easy Listening" /> Easy Listening<br>
						</td>
						
						<td class="default" valign="top">
							<form:checkbox path="music" value="Folk" /> Folk<br>
							<form:checkbox path="music" value="Hard Rock & Metal" /> Hard Rock & Metal<br>
							<form:checkbox path="music" value="Jazz" /> Jazz<br>
							<form:checkbox path="music" value="Latin" /> Latin<br>
							<form:checkbox path="music" value="Modern Rock n Roll" /> Modern Rock n' Roll<br>
							<form:checkbox path="music" value="New Age" /> New Age<br>
							<form:checkbox path="music" value="Oldies" /> Oldies<br>
							<form:checkbox path="music" value="Opera" /> Opera<br>
							<form:checkbox path="music" value="Pop/Top 40" /> Pop/Top 40<br>
							<form:checkbox path="music" value="Rap/Hip Hop" /> Rap/Hip Hop<br>
						</td>
						
						<td class="default" valign="top">
							<form:checkbox path="music" value="Reggae" /> Reggae<br>
							<form:checkbox path="music" value="Showtunes" /> Showtunes<br>
							<form:checkbox path="music" value="Soul/R&B" /> Soul/R&B<br>
							<form:checkbox path="music" value="World Music/Ethnic" /> World Music/Ethnic<br>
							<form:checkbox path="music" value="Punk" /> Punk<br>
							<form:checkbox path="music" value="Instrumental" /> Instrumental<br>
							<form:checkbox path="music" value="Soundtracks" /> Soundtracks<br>
							<form:checkbox path="music" value="Acoustic" /> Acoustic<br>
							<form:checkbox path="music" value="Indie" /> Indie<br>
							<form:checkbox path="music" value="Other" /> Other<br>
						</td>
						
						<td class="default" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td colspan=3>&nbsp;</td>
		</tr>
		
		<tr>
			<td colspan=3 class="stdBold">You like to read:</td>
		</tr>
		
		<tr>
			<td colspan=3>&nbsp;
				<table cellpadding="0" cellspacing="0" >
					<tr>
						<td>
							<form:checkbox path="reading" value="Fiction" /> Fiction<br>
							<form:checkbox path="reading" value="Magazines" /> Magazines<br>
							<form:checkbox path="reading" value="Newspapers" /> Newspapers<br>
						</td>
						
						<td class="default" valign="top">
							<form:checkbox path="reading" value="Non-Fiction" /> Non-Fiction<br>
							<form:checkbox path="reading" value="Poetry" /> Poetry<br>
							<form:checkbox path="reading" value="Trade Journals" /> Trade Journals<br>
						</td>
						
						<td class="default" valign="top">
							<form:checkbox path="reading" value="Comics" /> Comics<br>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td colspan=3>&nbsp;</td>
		</tr>
		
		<tr>
			<td colspan=3 class="stdBold">My idea of the perfect first date...</td>
		</tr>
		
		<tr>
			<td colspan=3><form:textarea path="perfectFirstDateEssay" rows="4" cols="60" maxlength="2000" /></textarea></td>
		</tr>
		
		<tr>
			<td align=left colspan=3>
				<input type="submit" name="Go" value="Continue">
			</td>
		</tr>
	</form:form>
</table>
</td>
</tr>
</table><br>


</body>
</html>