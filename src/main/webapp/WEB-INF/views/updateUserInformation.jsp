<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update User Information</title>
</head>
<body>
<form:form name="updateForm" method="post" action="updated.htm" commandName="user" enctype="multipart/form-data">
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
                        <td align="center"><img src='${sessionScope.loggedInUser.fileLocation}'></td>
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
                        <td colspan="2">Member ID: ${sessionScope.loggedInUser.userID}</td>
						<td bgcolor="#FFF1DB" align="right"></td>
		     		 </tr>
                     <tr>
                        <td class="stdbold" valign="top" align="left"><span style="{color: #962a2a}">Member Name: ${sessionScope.loggedInUser.userName}</span></td>
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
													<td align="top" class="default" width="129"><font class="boldSmall">Change your photo: </font><br></td>
													<td valign="top"><form:input path="photo" type="file" /> <br/>
												</tr>
                                             	<tr>
                                                	<td valign="top" class="default" width="129"><span style="{color: #962a2a}">Brief Introduce Yourself:</span></td>
                                                    <td valign="top" width="108"> <form:textarea style="height: 20px;width: 250px;" path="aboutMe1" /></td>
                                               	</tr>
                                             	<tr>
                                                	<td valign="top" class="default" width="129"><span style="{color: #962a2a}">Describe Yourself:</span></td>
                                                    <td valign="top" width="108"> <form:textarea style="height: 20px;width: 250px;" path="aboutMe2" /></td>
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
                                                   <td class="std">From:</td>
                                                   <td>
    <form:input path="city" placeholder="City"/>,<form:input path="state" placeholder="State"/>, 
    <form:select path="country" placeholder="Country">
	<option value="Afghanistan"         >Afghanistan</option>
	<option value="Albania"             >Albania</option>
	<option value="Algeria"             >Algeria</option>
	<option value="Andorra"             >Andorra</option>
	<option value="Angola"              >Angola</option>
	<option value="Anguilla"            >Anguilla</option>
	<option value="Antarctica"          >Antarctica</option>
	<option value="Antigua & Barbuda"   >Antigua & Barbuda</option>
	<option value="Argentina"           >Argentina</option>
	<option value="Armenia"             >Armenia</option>
	<option value="Aruba"               >Aruba</option>
	<option value="Australia"           >Australia</option>
	<option value="Austria"             >Austria</option>
	<option value="Azerbaijan"          >Azerbaijan</option>
	<option value="Bahamas"             >Bahamas</option>
	<option value="Bahrain"             >Bahrain</option>
	<option value="Bangladesh"          >Bangladesh</option>
	<option value="Barbados"            >Barbados</option>
	<option value="Belarus"             >Belarus</option>
	<option value="Belgium"             >Belgium</option>
	<option value="Belize"              >Belize</option>
	<option value="Benin"               >Benin</option>
	<option value="Bermuda"             >Bermuda</option>
	<option value="Bhutan"              >Bhutan</option>
	<option value="Bolivia"             >Bolivia</option>
	<option value="Bosnia-Herzgna"      >Bosnia-Herzgna</option>
	<option value="Botswana"            >Botswana</option>
	<option value="Brazil"              >Brazil</option>
	<option value="Brunei"              >Brunei</option>
	<option value="Bulgaria"            >Bulgaria</option>
	<option value="Burkina Faso"        >Burkina Faso</option>
	<option value="Burundi"             >Burundi</option>
	<option value="Cambodia"            >Cambodia</option>
	<option value="Cameroon"            >Cameroon</option>
	<option value="Canada"              >Canada</option>
	<option value="Cape Verde"          >Cape Verde</option>
	<option value="Cayman Islands"      >Cayman Islands</option>
	<option value="Central African Rep.">Central African Rep.</option>
	<option value="Chad"                >Chad</option>
	<option value="Chile"               >Chile</option>
	<option value="China"               >China</option>
	<option value="Christmas Island"    >Christmas Island</option>
	<option value="Cocos (Keeling) Is." >Cocos (Keeling) Is.</option>
	<option value="Colombia"            >Colombia</option>
	<option value="Comoros"             >Comoros</option>
	<option value="Congo"               >Congo</option>
	<option value="Congo (Zaire)"       >Congo (Zaire)</option>
	<option value="Cook Islands"        >Cook Islands</option>
	<option value="Costa Rica"          >Costa Rica</option>
	<option value="Cote DIvoire"        >Cote D'Ivoire</option>
	<option value="Croatia (Hrvatska)"  >Croatia (Hrvatska)</option>
	<option value="Cyprus"              >Cyprus</option>
	<option value="Czech Rep."          >Czech Rep.</option>
	<option value="Denmark"             >Denmark</option>
	<option value="Djibouti"            >Djibouti</option>
	<option value="Dominica"            >Dominica</option>
	<option value="Dominican Rep."      >Dominican Rep.</option>
	<option value="East Timor"          >East Timor</option>
	<option value="Ecuador"             >Ecuador</option>
	<option value="Egypt"               >Egypt</option>
	<option value="El Salvador"         >El Salvador</option>
	<option value="Equatorial Guinea"   >Equatorial Guinea</option>
	<option value="Eritrea"             >Eritrea</option>
	<option value="Estonia"             >Estonia</option>
	<option value="Ethiopia"            >Ethiopia</option>
	<option value="Falkland Is."        >Falkland Is.</option>
	<option value="Faroe Islands"       >Faroe Islands</option>
	<option value="Fiji Islands"        >Fiji Islands</option>
	<option value="Finland"             >Finland</option>
	<option value="France"              >France</option>
	<option value="French Guiana"       >French Guiana</option>
	<option value="French Polynesia"    >French Polynesia</option>
	<option value="French So. Terr."    >French So. Terr.</option>
	<option value="Gabon"               >Gabon</option>
	<option value="Gambia"              >Gambia</option>
	<option value="Georgia"             >Georgia</option>
	<option value="Germany"             >Germany</option>
	<option value="Ghana"               >Ghana</option>
	<option value="Gibraltar"           >Gibraltar</option>
	<option value="Greece"              >Greece</option>
	<option value="Greenland"           >Greenland</option>
	<option value="Grenada"             >Grenada</option>
	<option value="Guadeloupe"          >Guadeloupe</option>
	<option value="Guam"                >Guam</option>
	<option value="Guatemala"           >Guatemala</option>
	<option value="Guinea"              >Guinea</option>
	<option value="Guinea-Bissau"       >Guinea-Bissau</option>
	<option value="Guyana"              >Guyana</option>
	<option value="Haiti"               >Haiti</option>
	<option value="Honduras"            >Honduras</option>
	<option value="Hong Kong (China)"   >Hong Kong (China)</option>
	<option value="Hungary"             >Hungary</option>
	<option value="Iceland"             >Iceland</option>
	<option value="India"               >India</option>
	<option value="Indonesia"           >Indonesia</option>
	<option value="Ireland"             >Ireland</option>
	<option value="Israel"              >Israel</option>
	<option value="Italy"               >Italy</option>
	<option value="Jamaica"             >Jamaica</option>
	<option value="Japan"               >Japan</option>
	<option value="Jordan"              >Jordan</option>
	<option value="Kazakhstan"          >Kazakhstan</option>
	<option value="Kenya"               >Kenya</option>
	<option value="Kiribati"            >Kiribati</option>
	<option value="Korea, South"        >Korea, South</option>
	<option value="Kuwait"              >Kuwait</option>
	<option value="Kyrgyzstan"          >Kyrgyzstan</option>
	<option value="Laos"                >Laos</option>
	<option value="Latvia"              >Latvia</option>
	<option value="Lebanon"             >Lebanon</option>
	<option value="Lesotho"             >Lesotho</option>
	<option value="Liechtenstein"       >Liechtenstein</option>
	<option value="Lithuania"           >Lithuania</option>
	<option value="Luxembourg"          >Luxembourg</option>
	<option value="Macau (China)"       >Macau (China)</option>
	<option value="Macedonia"           >Macedonia</option>
	<option value="Madagascar"          >Madagascar</option>
	<option value="Malawi"              >Malawi</option>
	<option value="Malaysia"            >Malaysia</option>
	<option value="Maldives"            >Maldives</option>
	<option value="Mali"                >Mali</option>
	<option value="Malta"               >Malta</option>
	<option value="Martinique"          >Martinique</option>
	<option value="Mauritania"          >Mauritania</option>
	<option value="Mauritius"           >Mauritius</option>
	<option value="Mayotte"             >Mayotte</option>
	<option value="Mexico"              >Mexico</option>
	<option value="Moldova"             >Moldova</option>
	<option value="Monaco"              >Monaco</option>
	<option value="Mongolia"            >Mongolia</option>
	<option value="Montserrat"          >Montserrat</option>
	<option value="Morocco"             >Morocco</option>
	<option value="Mozambique"          >Mozambique</option>
	<option value="Myanmar"             >Myanmar</option>
	<option value="Namibia"             >Namibia</option>
	<option value="Nauru"               >Nauru</option>
	<option value="Nepal"               >Nepal</option>
	<option value="Netherlands"         >Netherlands</option>
	<option value="Netherlands Ant."    >Netherlands Ant.</option>
	<option value="New Caledonia"       >New Caledonia</option>
	<option value="New Zealand"         >New Zealand</option>
	<option value="Nicaragua"           >Nicaragua</option>
	<option value="Niger"               >Niger</option>
	<option value="Nigeria"             >Nigeria</option>
	<option value="Niue"                >Niue</option>
	<option value="No. Mariana Is."     >No. Mariana Is.</option>
	<option value="Norfolk Island"      >Norfolk Island</option>
	<option value="Norway"              >Norway</option>
	<option value="Oman"                >Oman</option>
	<option value="Pakistan"            >Pakistan</option>
	<option value="Palau"               >Palau</option>
	<option value="Panama"              >Panama</option>
	<option value="Papua new Guinea"    >Papua new Guinea</option>
	<option value="Paraguay"            >Paraguay</option>
	<option value="Peru"                >Peru</option>
	<option value="Philippines"         >Philippines</option>
	<option value="Pitcairn Is."        >Pitcairn Is.</option>
	<option value="Poland"              >Poland</option>
	<option value="Portugal"            >Portugal</option>
	<option value="Puerto Rico"         >Puerto Rico</option>
	<option value="Qatar"               >Qatar</option>
	<option value="Reunion"             >Reunion</option>
	<option value="Romania"             >Romania</option>
	<option value="Russia"              >Russia</option>
	<option value="Rwanda"              >Rwanda</option>
	<option value="Saint Helena"        >Saint Helena</option>
	<option value="Saint Kitts & Nevis" >Saint Kitts & Nevis</option>
	<option value="Saint Lucia"         >Saint Lucia</option>
	<option value="Samoa"               >Samoa</option>
	<option value="San Marino"          >San Marino</option>
	<option value="Sandwich Islands"    >Sandwich Islands</option>
	<option value="Sao Tome & Prin."    >Sao Tome & Prin.</option>
	<option value="Saudi Arabia"        >Saudi Arabia</option>
	<option value="Senegal"             >Senegal</option>
	<option value="Seychelles"          >Seychelles</option>
	<option value="Sierra Leone"        >Sierra Leone</option>
	<option value="Singapore"           >Singapore</option>
	<option value="Slovakia"            >Slovakia</option>
	<option value="Slovenia"            >Slovenia</option>
	<option value="Solomon Islands"     >Solomon Islands</option>
	<option value="Somalia"             >Somalia</option>
	<option value="South Africa"        >South Africa</option>
	<option value="Spain"               >Spain</option>
	<option value="Sri Lanka"           >Sri Lanka</option>
	<option value="St. Pierre & Miqn"   >St. Pierre & Miq'n</option>
	<option value="St. Vincent & Greds.">St. Vincent & Gred's.</option>
	<option value="Sudan"               >Sudan</option>
	<option value="Suriname"            >Suriname</option>
	<option value="Svalbard & J. Mayn"  >Svalbard & J. May'n</option>
	<option value="Swaziland"           >Swaziland</option>
	<option value="Sweden"              >Sweden</option>
	<option value="Switzerland"         >Switzerland</option>
	<option value="Syria"               >Syria</option>
	<option value="Taiwan"              >Taiwan</option>
	<option value="Tajikistan"          >Tajikistan</option>
	<option value="Tanzania"            >Tanzania</option>
	<option value="Thailand"            >Thailand</option>
	<option value="The Vatican"         >The Vatican</option>
	<option value="Togo"                >Togo</option>
	<option value="Tokelau"             >Tokelau</option>
	<option value="Tonga"               >Tonga</option>
	<option value="Trinidad & Tobago"   >Trinidad & Tobago</option>
	<option value="Tunisia"             >Tunisia</option>
	<option value="Turkey"              >Turkey</option>
	<option value="Turkmenistan"        >Turkmenistan</option>
	<option value="Turks & Caicos Is."  >Turks & Caicos Is.</option>
	<option value="Tuvalu"              >Tuvalu</option>
	<option value="UAE"                 >UAE</option>
	<option value="Uganda"              >Uganda</option>
	<option value="Ukraine"             >Ukraine</option>
	<option value="United Kingdom"      >United Kingdom</option>
	<option value="Uruguay"             >Uruguay</option>
	<option value="USA"  selected       >USA</option>
	<option value="Uzbekistan"          >Uzbekistan</option>
	<option value="Vanuatu"             >Vanuatu</option>
	<option value="Venezuela"           >Venezuela</option>
	<option value="Vietnam"             >Vietnam</option>
	<option value="Virgin Islands (UK)" >Virgin Islands (UK)</option>
	<option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
	<option value="Wallis & Futuna Is." >Wallis & Futuna Is.</option>
	<option value="Western Sahara"      >Western Sahara</option>
	<option value="Yemen"               >Yemen</option>
	<option value="Yugoslavia"          >Yugoslavia</option>
	<option value="Zambia"              >Zambia</option>
	<option value="Zimbabwe"            >Zimbabwe</option>
</form:select>,
	<form:input path="postalCode" placeholder="Postal Code" />
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
                                                            <td valign="top" width="108"><form:input path="hairColor"/></td>
                                                         </tr>
               
                                                         <tr>
                                                            <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Eyes:</span></td>
                                                            <td valign="top" width="108"><form:input path="eyeColor"/> </td>
                                                         </tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Height:</span></td>
   <td valign="top" width="108"><form:input path="height" placeholder="cm"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Weight:</span></td>
   <td valign="top" width="108"><form:input path="weight" placeholder="kg"/> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Body Style:</span></td>
   <td valign="top" width="108"><form:input path="bodyType"/> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Activity Level:</span></td>
   <td valign="top" width="108"><form:input path="activityLevel"/> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Smoking:</span></td>
   <td valign="top" width="108"><form:input path="smokingHabits"/> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Drinking:</span></td>
   <td valign="top" width="108"> <form:input path="drinkingHabits" /> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Marital Status:</span></td>
   <td valign="top" width="108"> <form:input path="maritalStatus" /> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Children:</span></td>
   <td valign="top" width="108"> <form:input path="custody" /> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Zodiac Sign:</span></td>
   <td valign="top" width="108"> <form:input path="zodiacSign" /> </td>
</tr>

<tr>
   <td valign="top" class="default" width="129"><span style="{color: #962a2a}">Languages I speak:</span></td>
   <td valign="top" width="108"> <form:input path="languages" /></td>
</tr>

</table>
</td>

<td valign="top">
<table cellpadding="0" cellspacing="0" >
<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Ethnicity:</span></td>
   <td valign="top"> <form:input path="ethnicity" /> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Religion:</span></td>
   <td valign="top"> <form:input path="religion" /> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Grew up in:</span></td>
   <td valign="top"> <form:input path="grewUpIn"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Education:</span></td>
   <td valign="top"> <form:input path="educationLeve"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Education Emphasis:</span></td>
   <td valign="top"> <form:input path="studiesEmphasis"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Politics:</span></td>
   <td valign="top"> <form:input path="politicalOrientation"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Occupation:</span></td>
   <td valign="top"> <form:input path="occupation"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Annual Income:</span></td>
   <td valign="top"> <form:input path="incomeLevel"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Rate appearance:</span></td>
   <td valign="top"> <form:input path="appearanceImportance"/> </td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">Rate intelligence:</span></td>
   <td valign="top"> <form:input path="intelligenceImportance"/> </td>
</tr>

<tr>
   <td class="std">Relocate:</td>
   <td> <form:input path="relocateFlag"/> </td>
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
   <td valign="top" width="391"><form:input path="occupationDescription"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="159"><span style="{color: #962a2a}">Seeking:</span></td>
   <td valign="top" width="391"><form:input path="relationshipType"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="159"><span style="{color: #962a2a}">Headline:</span></td>
   <td valign="top" width="391"><form:input path="headline"/></td>
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
   <td valign="top"><form:input path="personalityTrait"/></td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">My favorite activities:</span></td>
   <td valign="top"><form:input path="leisureActivity"/></td>
</tr>

<tr>
   <td valign="top" class="default"><span style="{color: #962a2a}">About the one I'm looking for:</span></td>
   <td valign="top"><form:input path="perfectMatchEssay"/></td>
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
   <td valign="top" width="454"><form:input path="cuisine"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">My favorite music:</span></td>
   <td valign="top" width="454"><form:input path="music"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">I like to read:</span></td>
   <td valign="top" width="454"><form:input path="reading"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="146"><span style="{color: #962a2a}">My idea of the perfect first date:</span></td>
   <td valign="top" width="454"><form:input path="perfectFirstDateEssay"/></td>
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
   <td valign="top" width="456"><form:input path="entertainmentLocation"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">My favorite physical activities:</span></td>
   <td valign="top" width="456"><form:input path="physicalActivity"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">My perception of an ideal relationship:</span></td>
   <td valign="top" width="456"><form:input path="idealRelationshipEssay"/></td>
</tr>

<tr>
   <td valign="top" class="default" width="144"><span style="{color: #962a2a}">What I've learned from my past relationships:</span></td>
   <td valign="top" width="456"><form:input path="learnFromThePastEssay"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><br>
<TR BGCOLOR='#D6DFFF'>
<TD ALIGN='center' colspan='2'><input type='submit' name='updateButton' value='Update My Information'></TD>
</TR><br>
</td>
</tr>
</table>
</td>
<td><img src="resources/images/trans.gif" hspace=0 vspace=0 border=0 width=15 height=1></td>
</tr></table></td>
</tr>
</table>
</form:form>
</body>
</html>