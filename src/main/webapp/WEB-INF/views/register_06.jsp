<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register_06</title>
<script language="JavaScript" src="resources/javascript/matchnet.js"></script>
<script language="JavaScript" src="resources/javascript/region3.js"></script>
<script language="JavaScript" src="resources/is/im.js"></script>
<link rel="stylesheet" type="text/css" href="resources/lib/css/as.css">
<link rel="stylesheet" type="text/css" href="resources/lib/css/common.css">
</head>
<body marginheight=0 marginwidth=0 topmargin=0 leftmargin=0 text="#000000" bgcolor="#ffffff">

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
   
   <TD>
      <B>Favorite Cuisines: </B><I><c:out value="${sessionScope.user5.cuisine}" /></I><BR>
      <B>Favorite Music: </B><I><c:out value="${sessionScope.user5.music}" /></I><BR>
      <B>Favorite Reading: </B><I><c:out value="${sessionScope.user5.reading}" /></I><BR>
      <B>Idea of perfect first date: </B><I><c:out value="${sessionScope.user5.perfectFirstDateEssay}" /></I><BR>
   </TD>
   
</TR>
</TABLE>


<table cellspacing="0" cellpadding="0" border="0" >
	<tr>
		<td valign="top" width="645">
			<table width="100%" cellspacing="4" cellpadding="0" >
				<tr>
					<td></td>
					<td class="message">
						<table class="message" cellpadding="0" cellspacing="0" >
							<tr>
								<td>
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td>
												<table width="100%" cellpadding="5" cellspacing="0" >
													<tr>
														<td>
															<img src="resources/images/page_message.gif" >
														</td>
														
														<td class="message" >Saved Step 4</td>
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
			<a name="Activities"></a>
			<table width="640" cellpadding="0" cellspacing="0" >
				<form:form name="step5form" method="post" commandName="user" action="register_step7.htm">
					<tr>
						<td colspan="3"><img src="resources/images/topline.gif" width="369" height="26" border="0">
						</td>
					</tr>
					
					<tr>
						<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">I like going out to:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td nowrap>
										<form:checkbox path="entertainmentLocation" value="Amusement Parks" /> Amusement Parks<br>
										<form:checkbox path="entertainmentLocation" value="Antique Stores/Flea Markets/Garage Sales" /> Antique Stores/Flea Markets/Garage Sales<br>
										<form:checkbox path="entertainmentLocation" value="Art Galleries" /> Art Galleries<br>
										<form:checkbox path="entertainmentLocation" value="In Bars/In Nightclubs" /> In Bars/In Nightclubs<br>
										<form:checkbox path="entertainmentLocation" value="Beach" /> Beach<br>
										<form:checkbox path="entertainmentLocation" value="Bookstores" /> Bookstores<br>
										<form:checkbox path="entertainmentLocation" value="Charity Events" /> Charity Events<br>
										<form:checkbox path="entertainmentLocation" value="Circuit Parties" /> Circuit Parties<br>
										<form:checkbox path="entertainmentLocation" value="Coffee Houses" /> Coffee Houses<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<form:checkbox path="entertainmentLocation" value="Comedy Clubs" /> Comedy Clubs<br>
										<form:checkbox path="entertainmentLocation" value="Concerts" /> Concerts<br>
										<form:checkbox path="entertainmentLocation" value="Dances - Line, Ballroom, Tango" /> Dances - Line, Ballroom, Tango<br>
										<form:checkbox path="entertainmentLocation" value="Karaoke/Sing-along" /> Karaoke/Sing-along<br>
										<form:checkbox path="entertainmentLocation" value="Libraries" /> Libraries<br>
										<form:checkbox path="entertainmentLocation" value="Live Theater" /> Live Theater<br>
										<form:checkbox path="entertainmentLocation" value="Movies" /> Movies<br>
										<form:checkbox path="entertainmentLocation" value="Museums" /> Museums<br>
										<form:checkbox path="entertainmentLocation" value="Opera" /> Opera<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<form:checkbox path="entertainmentLocation" value="Parks" /> Parks<br>
										<form:checkbox path="entertainmentLocation" value="Political Events" /> Political Events<br>
										<form:checkbox path="entertainmentLocation" value="Raves/Underground Parties" /> Raves/Underground Parties<br>
										<form:checkbox path="entertainmentLocation" value="Restaurants" /> Restaurants<br>
										<form:checkbox path="entertainmentLocation" value="Shopping Malls" /> Shopping Malls<br>
										<form:checkbox path="entertainmentLocation" value="Skate/Bike Parks" /> Skate/Bike Parks<br>
										<form:checkbox path="entertainmentLocation" value="Sporting Events" /> Sporting Events<br>
										<form:checkbox path="entertainmentLocation" value="Symphony" /> Symphony<br>
										<form:checkbox path="entertainmentLocation" value="Volunteer Events" /> Volunteer Events<br>
									</td>
									
									<td class="default" nowrap valign="top"></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">My favorite physical activities:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td nowrap>
										<form:checkbox path="physicalActivity" value="Aerobics" /> Aerobics<br>
										<form:checkbox path="physicalActivity" value="Baseball/Softball" /> Baseball/Softball<br>
										<form:checkbox path="physicalActivity" value="Basketball" /> Basketball<br>
										<form:checkbox path="physicalActivity" value="Biking" /> Biking<br>
										<form:checkbox path="physicalActivity" value="Boating/Sailing/Rafting" /> Boating/Sailing/Rafting<br>
										<form:checkbox path="physicalActivity" value="Working Out/Weightlifting" /> Working Out/Weightlifting<br>
										<form:checkbox path="physicalActivity" value="Bowling" /> Bowling<br>
										<form:checkbox path="physicalActivity" value="Cricket" /> Cricket<br>
										<form:checkbox path="physicalActivity" value="Dancing" /> Dancing<br>
										<form:checkbox path="physicalActivity" value="Football - American" /> Football - American<br>
										<form:checkbox path="physicalActivity" value="Golf" /> Golf<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<form:checkbox path="physicalActivity" value="Hiking/Walking" /> Hiking/Walking<br>
										<form:checkbox path="physicalActivity" value="Hockey" /> Hockey<br>
										<form:checkbox path="physicalActivity" value="Horseback Riding" /> Horseback Riding<br>
										<form:checkbox path="physicalActivity" value="Hunting/Fishing" /> Hunting/Fishing<br>
										<form:checkbox path="physicalActivity" value="Inline Skating/Roller Skating" /> Inline Skating/Roller Skating<br>
										<form:checkbox path="physicalActivity" value="Ice Skating" /> Ice Skating<br>
										<form:checkbox path="physicalActivity" value="Jet/Water Skiing" /> Jet/Water Skiing<br>
										<form:checkbox path="physicalActivity" value="Jogging/Running" /> Jogging/Running<br>
										<form:checkbox path="physicalActivity" value="Martial Arts" /> Martial Arts<br>
										<form:checkbox path="physicalActivity" value="Rock Climbing" /> Rock Climbing<br>
										<v value="Rugby" > Rugby<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<form:checkbox path="physicalActivity" value="Skydiving/Hang Gliding/Flying" /> Skydiving/Hang Gliding/Flying<br>
										<form:checkbox path="physicalActivity" value="Snorkeling/Scuba Diving" /> Snorkeling/Scuba Diving<br>
										<form:checkbox path="physicalActivity" value="Snow Skiing" /> Snow Skiing<br>
										<form:checkbox path="physicalActivity" value="Soccer" /> Soccer<br>
										<form:checkbox path="physicalActivity" value="Surfing/Snowboarding/Skateboarding" /> Surfing/Snowboarding/Skateboarding<br>
										<form:checkbox path="physicalActivity" value="Swimming/Diving/Water Polo" /> Swimming/Diving/Water Polo<br>
										<form:checkbox path="physicalActivity" value="Tennis/Racquet Sports" /> Tennis/Racquet Sports<br>
										<form:checkbox path="physicalActivity" value="Volleyball" /> Volleyball<br>
										<form:checkbox path="physicalActivity" value="Yoga/Meditation" /> Yoga/Meditation<br>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">My perception of an ideal relationship...</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td><form:textarea path="idealRelationshipEssay" rows="4" cols="60" maxlength="2000" /></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">What I've learned from my past relationships...</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td><form:textarea path="learnFromThePastEssay" rows="4" cols="60" maxlength="2000" /></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3>
							<input type="hidden" name="a" value="7540" >
							<input type="hidden" name="EditFlag" value="1" >
						</td>
					</tr>
					
					<tr>
						<td colspan=3></td>
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