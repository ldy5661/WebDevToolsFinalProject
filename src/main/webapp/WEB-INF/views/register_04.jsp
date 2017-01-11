<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register_04</title>
<script language="JavaScript" src="resources/javascript/matchnet.js"></script>
<script language="JavaScript" src="resources/javascript/region3.js"></script>
<script language="JavaScript" src="resources/is/im.js"></script>
<link rel="stylesheet" type="text/css" href="resources/lib/css/as.css">
<link rel="stylesheet" type="text/css" href="resources/lib/css/common.css">
</head>
<body>
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
</TR>
</TABLE>

<table cellspacing="5" cellpadding="5" border="5" >
<tr>
	<td valign="top" width="645">
		<table width="100%" cellspacing="4" cellpadding="4" border='0' >
			<tr>
			<td class="message">
				<table class="message" cellpadding="0" cellspacing="0" >
					<tr>
						<td>
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td>
										<table width="100%" cellpadding="5" cellspacing="0" >
											<tr>
												<td><img src="resources/images/page_message.gif" ></td>
												<td class="message" >Saved Step 2</td>
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
	
	<a name="Personality"></a>
	<table width="640" cellpadding="0" cellspacing="0" >
		<form:form name="step3form" method="post" commandName="user" action="register_step5.htm">
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
				<td colspan=2 class="stdBold">My personality traits:</td>
			</tr>
			
			<tr>
				<td colspan=3>&nbsp;
					<table cellpadding="0" cellspacing="0" >
						<tr>
							<td nowrap>
								<form:checkbox path="personalityTrait" value="Adventurous/Wild/Spontaneous" /> Adventurous/Wild/Spontaneous<br>
								<form:checkbox path="personalityTrait" value="Argumentative" /> Argumentative<br>
								<form:checkbox path="personalityTrait" value="Artistic" /> Artistic<br>
								<form:checkbox path="personalityTrait" value="Compulsive" /> Compulsive<br>
								<form:checkbox path="personalityTrait" value="Conservative/Clean Cut" /> Conservative/Clean Cut<br>
								<form:checkbox path="personalityTrait" value="Earthy" /> Earthy<br>
								<form:checkbox path="personalityTrait" value="Easygoing/Flexible/Open-Minded" /> Easygoing/Flexible/Open-Minded<br>
								<form:checkbox path="personalityTrait" value="Eccentric" /> Eccentric<br>
								<form:checkbox path="personalityTrait" value="Flamboyant" /> Flamboyant<br>
								<form:checkbox path="personalityTrait" value="Flirtatious/Playful" /> Flirtatious/Playful<br>
							</td>
							
							<td class="default" nowrap valign="top">
								<form:checkbox path="personalityTrait" value="Friendly/Kind" /> Friendly/Kind<br>
								<form:checkbox path="personalityTrait" value="High Energy" /> High Energy<br>
								<form:checkbox path="personalityTrait" value="High Maintenance" /> High Maintenance<br>
								<form:checkbox path="personalityTrait" value="Humorous/Witty" /> Humorous/Witty<br>
								<form:checkbox path="personalityTrait" value="Intellectual" /> Intellectual<br>
								<form:checkbox path="personalityTrait" value="Low Maintenance" /> Low Maintenance<br>
								<form:checkbox path="personalityTrait" value="Sensitive/Nurturing/Loving" /> Sensitive/Nurturing/Loving<br>
								<form:checkbox path="personalityTrait" value="Outgoing" /> Outgoing<br>
								<form:checkbox path="personalityTrait" value="Practical" /> Practical<br>
								<form:checkbox path="personalityTrait" value="Procrastinator" /> Procrastinator<br>
							</td>
							
							<td class="default" nowrap valign="top">
								<form:checkbox path="personalityTrait" value="Quiet/Shy" /> Quiet/Shy<br>
								<form:checkbox path="personalityTrait" value="Romantic" /> Romantic<br>
								<form:checkbox path="personalityTrait" value="Self Confident" /> Self Confident<br>
								<form:checkbox path="personalityTrait" value="Serious/Responsible" /> Serious/Responsible<br>
								<form:checkbox path="personalityTrait" value="Simple" /> Simple<br>
								<form:checkbox path="personalityTrait" value="Sophisticated/Worldly" /> Sophisticated/Worldly<br>
								<form:checkbox path="personalityTrait" value="Spiritual" /> Spiritual<br>
								<form:checkbox path="personalityTrait" value="Stubborn" /> Stubborn<br>
								<form:checkbox path="personalityTrait" value="Talkative" /> Talkative<br>
								<form:checkbox path="personalityTrait" value="Unconventional/Free-Spirited" /> Unconventional/Free-Spirited<br>
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
				<td colspan=3 class="stdBold">My favorite activities</td>
			</tr>
			
			<tr>
				<td colspan=3>&nbsp;
					<table cellpadding="0" cellspacing="0" >
						<tr>
							<td nowrap>
								<form:checkbox path="leisureActivity" value="Antiquing" /> Antiquing<br>
								<form:checkbox path="leisureActivity" value="Board Games/Backgammon/Chess" /> Board Games/Backgammon/Chess<br>
								<form:checkbox path="leisureActivity" value="Camping" /> Camping<br>
								<form:checkbox path="leisureActivity" value="Card Games/Bridge/Canasta" /> Card Games/Bridge/Canasta<br>
								<form:checkbox path="leisureActivity" value="Collecting" /> Collecting<br>
								<form:checkbox path="leisureActivity" value="Cooking/Barbecuing" /> Cooking/Barbecuing<br>
								<form:checkbox path="leisureActivity" value="Dining Out" /> Dining Out<br>
								<form:checkbox path="leisureActivity" value="Entertaining" /> Entertaining<br>
								<form:checkbox path="leisureActivity" value="Gambling" /> Gambling<br>
								<form:checkbox path="leisureActivity" value="Gardening" /> Gardening<br>
							</td>
							
							<td class="default" nowrap valign="top">
								<form:checkbox path="leisureActivity" value="Hanging Out with Friends" /> Hanging Out with Friends<br>
								<form:checkbox path="leisureActivity" value="Home Improvement/Decorating" /> Home Improvement/Decorating<br>
								<form:checkbox path="leisureActivity" value="Intimate Conversations" /> Intimate Conversations<br>
								<form:checkbox path="leisureActivity" value="Investing" /> Investing<br>
								<form:checkbox path="leisureActivity" value="Listening to/Playing Music" /> Listening to/Playing Music<br>
								<form:checkbox path="leisureActivity" value="Motorcycling" /> Motorcycling<br>
								<form:checkbox path="leisureActivity" value="Painting/Drawing" /> Painting/Drawing<br>
								<form:checkbox path="leisureActivity" value="Partying" /> Partying<br>
								<form:checkbox path="leisureActivity" value="People Watching" /> People Watching<br>
								<form:checkbox path="leisureActivity" value="Photography" /> Photography<br>
							</td>
							
							<td class="default" nowrap valign="top">
								<form:checkbox path="leisureActivity" value="Pool/Billiards/Darts" /> Pool/Billiards/Darts<br>
								<form:checkbox path="leisureActivity" value="Reading/Writing" /> Reading/Writing<br>
								<form:checkbox path="leisureActivity" value="Sewing/Crafts" /> Sewing/Crafts<br>
								<form:checkbox path="leisureActivity" value="Shopping" /> Shopping<br>
								<form:checkbox path="leisureActivity" value="Surfing the Web/Chatting Online" /> Surfing the Web/Chatting Online<br>
								<form:checkbox path="leisureActivity" value="Taking Long Walks" /> Taking Long Walks<br>
								<form:checkbox path="leisureActivity" value="Traveling/Weekend Trips/Adventure Travel" /> Traveling/Weekend Trips/Adventure Travel<br>
								<form:checkbox path="leisureActivity" value="Video Games/Online Games" /> Video Games/Online Games<br>
								<form:checkbox path="leisureActivity" value="Movies/TV" /> Movies/TV<br>
								<form:checkbox path="leisureActivity" value="Wine Tasting" /> Wine Tasting<br>
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
				<td colspan=3 class="stdBold">About the one I'm looking for...</td>
			</tr>
			
			<tr>
				<td colspan=3>&nbsp;</td>
			</tr>
			
			<tr>
				<td colspan=3><textarea name="PerfectMatchEssay" rows=4 cols=60 maxlength=2000></textarea></td>
			</tr>
			
			<tr>
				<td colspan=3>&nbsp;</td>
			</tr>
				
			<tr>
				<td align=left colspan=3><input type="submit" name="Go" value="Continue"></td>
			</tr>
</form:form>
	</table>
</td>
</tr>
</table>
</body>

</html>