<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table cellpadding="0" cellspacing="0" >
   <tr>
      <td colspan="3"></td>
   </tr>

   <tr>
      <td><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=15 height=1></td>
      <td>
         <table width="600" cellpadding="0" cellspacing="0">
            <tr>
               <td colspan="3">&nbsp;</td>
            </tr>

            <tr>
               <td colspan="3" bgcolor="#D0CFC4"></td>
            </tr>

            <tr>
               <td width="350" bgColor="#D0CFC4">
                  <table cellpadding="0" width="350" cellspacing="0" >
                     <tr>
                        <td align="center"><img src='${sessionScope.lookupByIDUser.fileLocation}'></td>
                     </tr>

                     <tr>
                        <td align="center"></td>
                     </tr>
                  </table>
               </td>
               
               <td bgColor="#F8F8F2"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=5 height=5></td>
               <td height="100%" bgColor="#F8F8F2">
                  <table height="100%" cellpadding="0" cellspacing="0" >
                     <tr>
                        <td class="stdbold" valign="top" align="left"><span style="{color: #962a2a}">${sessionScope.lookupByIDUser.userName}</span></td>
                     </tr>

                     <tr>
                        <td colspan="2">${sessionScope.lookupByIDUser.maritalStatus}&nbsp;${sessionScope.lookupByIDUser.gender} seeking ${sessionScope.lookupByIDUser.seekingGender} <BR> was born in ${sessionScope.lookupByIDUser.dOByear} <br>from  ${sessionScope.lookupByIDUser.city}, ${sessionScope.lookupByIDUser.state}, ${sessionScope.lookupByIDUser.country} </td>
			<td bgcolor="#FFF1DB" align="right"></td>
		     </tr>

                     <tr>
                        <td colspan="2"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=5 height=5></td>
                     </tr>

                     <tr>
                        <td class="bold" colspan="2"><span style="{color: #962a2a}">About Me</span></td>
                     </tr>

                     <tr>
                        <td colspan="2" height="1" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
                     </tr>

                     <tr>
                        <td colspan="2">
                           <table width="100%" cellpadding="0" cellspacing="0" > ${sessionScope.lookupByIDUser.aboutMe1} <a href="#aboutme">more</a>
                              <tr>
                                 <td class="default"></td>
                              </tr>
                           </table>
	                </td>
                     </tr>

                     <tr>
                        <td colspan="2"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=5 height=10></td>
                     </tr>
                     
                     <tr>
                        <td class="bold" colspan="2">&nbsp;</td>
                     </tr>
                     
                     <tr>
                        <td colspan="2" height="1" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
                     </tr>

                     <tr>
                        <td colspan="2">
                           <table align="left" cellpadding="0" cellspacing="0" >
                              <tr>
                                 <td valign="top" width="70" align="left">&nbsp;</td>
                                 <td valign="top" width="70" align="left">&nbsp;</td>
                                 <td valign="top" width="70" align="left">&nbsp;</td>
                              </tr>
                           </table>
                        </td>
                     </tr>
                  </table>
               </td>
            </tr>

            <tr>
               <td bgcolor="white" colspan="3"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=3></td>
            </tr>

            <tr>
               <td bgcolor="#D0CFC4" colspan="3"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
            </tr>

            <tr>
               <td bgcolor="#D0CFC4" colspan="3"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
            </tr>

            <tr>
               <td colspan="3" align="left" border="0" valign="middle">&nbsp;</td>
            </tr>
         </table>

         <table cellpadding="0" cellspacing="0" >
            <tr>
               <td width="100%" valign="top">
                  <table border="0" cellpadding="0" cellspacing="0" >
                     <tr>
                        <td class="stdBold">
                           <table cols="2" width="600" border="0" cellpadding="0" cellspacing="0" >
                              <tr>
                                 <td class="stdBold">
                                    <table width="100%" cellpadding="0" cellspacing="0" >
                                       <tr>
                                          <td class="bold"><span style="{color: #962a2a}">About Me</span></td>
                                          <td align="right">&nbsp;</td>
                                       </tr>

                                       <tr>
                                          <td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
                                       </tr>

                                       <tr>
                                          <td colspan="2">
                                             <table bgcolor="#F8F8F2" width="100%" border="0" cellpadding="0" cellspacing="0" >
                                                <tr>
                                                   <td><a name="aboutme"></a> ${sessionScope.lookupByIDUser.aboutMe2} </td>
                                                </tr>
                                             </table>
                                          </td>
                                       </tr>
                                    </table>
                                 </td>
                              </tr>

                              <tr>
                                 <td class="stdBold"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=10>
                                    <table width="100%" cellpadding="0" cellspacing="0" >
                                       <tr>
                                          <td class="bold"><span style="{color: #962a2a}">Personal Info</span></td>
                                          <td align="right">&nbsp;</td>
                                       </tr>

                                       <tr>
                                          <td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
                                       </tr>
                
                                       <tr>
                                          <td colspan="2">
                                             <table bgcolor="#F8F8F2" width="100%" border="0" cellpadding="0" cellspacing="0" >
                                                <tr>
                                                   <td class="std">Username:</td>
                                                   <td width="100%">${sessionScope.lookupByIDUser.userName} </td>
                                                </tr>

                                                <tr>
                                                   <td class="std">Gender:</td>
                                                   <td>${sessionScope.lookupByIDUser.gender} seeking ${sessionScope.lookupByIDUser.seekingGender} </td>
                                                </tr>

                                                <tr>
                                                   <td class="std">From:</td>
                                                   <td> ${sessionScope.lookupByIDUser.city}, ${sessionScope.lookupByIDUser.state}, ${sessionScope.lookupByIDUser.country} </td>
                                                </tr>

                                                <tr>
                                                   <td class="std">Age:
                                                   <fmt:formatDate value="${date}" pattern="yyyy" var="currentYear" />
                                                   </td>
                                                   <td><c:out value="${currentYear-sessionScope.lookupByIDUser.dOByear}" /></td>
                                                </tr>
                                             </table>
                                          </td>
                                       </tr>
                                    </table>
                                 </td>
                              </tr>

                              <tr>
                                 <td class="stdBold"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=10>
                                    <table width="100%" cellpadding="0" cellspacing="0" >
                                       <tr>
                                          <td class="bold"><span style="{color: #962a2a}">Basics</span></td>
                                          <td align="right">&nbsp;</td>
                                       </tr>

                                       <tr>
                                          <td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
                                       </tr>

                                       <tr>
                                          <td colspan="2"></td>
                                       </tr>

                                       <tr>
                                          <td width=100% colspan="2" align="left">
                                             <table bgcolor="#F8F8F2" cols="2" width="100%" border="0" cellpadding="0" cellspacing="0" >
                                                <tr>
                                                   <td valign="top">
                                                      <table cols="2" cellpadding="0" cellspacing="0" width="237" >
                                                         <tr>
                                                            <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Hair:</span></td>
                                                            <td valign="top" width="108">${sessionScope.lookupByIDUser.hairColor}</td>
                                                         </tr>
               
                                                         <tr>
                                                            <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Eyes:</span></td>
                                                            <td valign="top" width="108"> ${sessionScope.lookupByIDUser.eyeColor} </td>
                                                         </tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Height:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.height} cm </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Weight:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.weight/1000} kg</td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Body Style:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.bodyType} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Activity Level:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.activityLevel} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Smoking:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.smokingHabits} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Drinking:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.drinkingHabits} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Marital Status:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.maritalStatus} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Children:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.custody} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Zodiac Sign:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.zodiacSign} </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Languages I speak:</span></td>
   <td valign="top" width="108"> ${sessionScope.lookupByIDUser.languages} </td>
</tr>

</table>
</td>

<td valign="top">
<table cellpadding="0" cellspacing="0" >
<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Ethnicity:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.ethnicity} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Religion:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.religion} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Grew up in:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.grewUpIn} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Education:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.educationLeve} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Education Emphasis:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.studiesEmphasis} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Politics:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.politicalOrientation} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Occupation:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.occupation} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Annual Income:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.incomeLevel} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Rate appearance:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.appearanceImportance} </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Rate intelligence:</span></td>
   <td valign="top"> ${sessionScope.lookupByIDUser.intelligenceImportance} </td>
</tr>

<tr>
   <td class="std">Relocate:</td>
   <td> ${sessionScope.lookupByIDUser.relocateFlag} </td>
</tr>
</table>
</td>
</tr>

<tr>
<td colspan="3"></td>
</tr>

<tr><td colspan="3">

<table cellpadding="0" cellspacing="0" width="550" >
<tr>
   <td valign="top" class="default" width="159"><span style="{color: #962a2a}">Occupation Description:</span></td>
   <td valign="top" width="391">${sessionScope.lookupByIDUser.occupationDescription}</td>
</tr>

<tr>
   <td valign="top" class="default" width="159"><span style="{color: #962a2a}">Seeking:</span></td>
   <td valign="top" width="391">${sessionScope.lookupByIDUser.relationshipType}</td>
</tr>

<tr>
   <td valign="top" class="default" width="159"><span style="{color: #962a2a}">Headline:</span></td>
   <td valign="top" width="391">${sessionScope.lookupByIDUser.headline}</td>
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

<tr>
<td class="stdBold"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=10>
<table width="100%" cellpadding="0" cellspacing="0" >
<tr>
   <td class="bold"><span style="{color: #962a2a}">Personality</span></td>
   <td align="right">&nbsp;</td>
</tr>

<tr>
<td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
</tr>

<tr>
   <td colspan="2"></td>
</tr>

<tr>
   <td colspan="2" align="left"><table bgcolor="#F8F8F2" width="100%" border="0" cellpadding="0" cellspacing="0" ><tr><td valign="top" class="default"><span style="{color: #962a2a}">My personality traits:</span></td>
   <td valign="top">${sessionScope.lookupByIDUser.personalityTrait}</td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">My favorite activities:</span></td>
   <td valign="top">${sessionScope.lookupByIDUser.leisureActivity}</td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">About the one I'm looking for:</span></td>
   <td valign="top">${sessionScope.lookupByIDUser.perfectMatchEssay}</td>
</tr>

</table>
</td>
</tr>
</table>
</td>
</tr>

<tr>
<td><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=10>
<table width="100%" cellpadding="0" cellspacing="0" >
<tr>
   <td class="bold"><span style="{color: #962a2a}">Interests</span></td>
   <td align="right">&nbsp;</td>
</tr>

<tr>
   <td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
</tr>

<tr>
   <td colspan="2"></td>
</tr>

<tr>
   <td colspan="2" align="left">
<table bgcolor="#F8F8F2" width="600" border="0" cellpadding="0" cellspacing="0" >
<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">My favorite cuisines:</span></td>
   <td valign="top" width="454">${sessionScope.lookupByIDUser.cuisine}</td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">My favorite music:</span></td>
   <td valign="top" width="454">${sessionScope.lookupByIDUser.music}</td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">I like to read:</span></td>
   <td valign="top" width="454">${sessionScope.lookupByIDUser.reading}</td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">My idea of the perfect first date:</span></td>
   <td valign="top" width="454">${sessionScope.lookupByIDUser.perfectFirstDateEssay}</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>

<tr>
<td><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=10>

<table width="100%" cellpadding="0" cellspacing="0" >
<tr>
   <td class="bold"><span style="{color: #962a2a}">Leisure and Physical Activities</span></td>
   <td align="right"><a href="#top" class="stdSmall"><img src="resources/images/btn_top.gif" width="16" height="15" border="0" alt="top"></a>&nbsp;</td>
</tr>

<tr>
   <td height="1" colspan="2" bgcolor="#D0CFC4"><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=1 height=1></td>
</tr>

<tr>
   <td colspan="2"></td>
</tr>

<tr>
   <td colspan="2" align="left">

<table bgcolor="#F8F8F2" width="600" border="0" cellpadding="0" cellspacing="0" >
<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">I like going out to:</span></td>
   <td valign="top" width="456">${sessionScope.lookupByIDUser.entertainmentLocation}</td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">My favorite physical activities:</span></td>
   <td valign="top" width="456">${sessionScope.lookupByIDUser.physicalActivity} </td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">My perception of an ideal relationship:</span></td>
   <td valign="top" width="456">${sessionScope.lookupByIDUser.idealRelationshipEssay}</td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">What I've learned from my past relationships:</span></td>
   <td valign="top" width="456">${sessionScope.lookupByIDUser.learnFromThePastEssay}</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><br>
<a href="lookupByNumber.htm" class="stdSmall"><img src="resources/images/btn_close.gif" border="0" align="right"></a></td>
</tr>
</table>
</td>
<td><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=15 height=1></td>
</tr></table></td>
</tr>
</table>
</body>
</html>