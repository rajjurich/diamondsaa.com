<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="SHORTCUT ICON" href="images/dialogo.ico">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/def.css" rel="stylesheet" type="text/css" />
<title>Diamond Sports Association</title>
</head>
<%mis=request.QueryString("mis")%>
<body>
<div id="header">
<div id="logo">
        <a href="/"><img src="images/logo.png" alt="diamondsaa.com " border="0" /></a>
    </div>
    <div id="smile"><img src="images/smilesoccer.gif" width="59" height="59" /></div>
<h1><a href="/">diamond sports association</a></h1>
<h2>Ambernath</h2><br />
<h6>"soccer is our religion"</h6>
</div>

<div id="scroll_container" style="position:relative;border-style:solid; width:1000px; border-width:0px; padding-top:0;padding-bottom:0;margin: 0 auto; background-color:#FFF">



<!--***** ^ End container and fade effect ****************-->


<!--******** Horizontal Scroll Content *****************-->

<div id="hsborder0" style="border-style:none; border-width:0px; border-color:#666666;">
<div id="hscroll0" style="position:relative;z-index:0;"><ul style="white-space:nowrap;">

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>Merry Christmas and happy new year 2011<img src="images/sample1_icon.gif" border=0></li>

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>we are coming soon, site under construction.<img src="images/sample1_icon.gif" border=0></li>

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>for sign up click <a href="signup.asp"><u>here</u></a><img src="images/sample1_icon.gif" border=0></li>

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>Powered by <a href="http://zen.ae" target="_blank"><u>zen interactive technologies</u></a><img src="images/sample1_icon.gif" border=0></li>

</ul></div></div></div><!--******** End Horizontal Scroll Content *****************-->

</div><!--******** End Horizontal Scroll Container *****************-->


<script language="JavaScript">///////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


unlock0 = 1214
unlock1 = 1617
function hscrolldata0()
{


    /*---------------------------------------------
    Scroll Dimensions (Note: Does not include container padding)
    ---------------------------------------------*/

	this.container_width = 1000
	this.container_height = 30


   /*---------------------------------------------
    Timing and Animation Speed
    ---------------------------------------------*/


	this.initial_scroll_delay = 0			//measured in seconds

	this.animation_delay = 20			//measured in milliseconds (1/1000)
	this.animation_jump = 2				//measured in pixels, must be > 1

	this.animation_delay_mac = 25			//measured in milliseconds (1/1000)
	this.animation_jump_mac = 4			//measured in pixels, must be > 1


    /*---------------------------------------------
    Scroll Container Styles and Padding
    ---------------------------------------------*/


	this.container_padding = "0,0,0,0"
	this.container_styles = "text-align:center; ";



    /*---------------------------------------------
    Item Styles and Padding
    ---------------------------------------------*/

	/* Note: this.Item_styles apply to all standard content in the scroll, while this.item_link_styles apply to content
                 within hyperlink tags only.  */

	this.message_gap = 800;

	this.item_styles = "color:#222222; text-decoration:none; font: normal small Arial, Helvetica, sans-serif;text-transform: uppercase;";
	this.item_link_styles = "color:#222222; text-decoration:none; font: normal small Arial, Helvetica, sans-serif;text-transform: uppercase;";
	this.item_link_hover_styles = "color:#000000; text-decoration:none; font: normal small Arial, Helvetica, sans-serif;text-transform: uppercase;";

}</script>



<!--================================================================================================================

     source Code - (Do Not Alter!)
     The source script block below should appear directly before your documents closing </BODY> tag.-->

<script language="JavaScript" src="js/hscroll.js"></script>





<div id="menu">
<ul>
<li><a href="about.asp" title="">About</a></li>
<li><a href="#" accesskey="2" title="">gallery</a></li>
<li><a href="#" accesskey="3" title="">events</a></li>
<li><a href="signup.asp" accesskey="4" title="">signup</a></li>
<li><a href="#" accesskey="4" title="">members area</a></li>
<li><a href="contacts.asp" accesskey="5" title="">Contact Us</a></li>

</ul>
</div>
<div id="divider">&nbsp;</div>

<table width="1000" border="0" cellpadding="0" cellspacing="0" align="center" id="content">
  <tr>
    <td id="colOne" valign="top">
    <h2>History</h2>
<h2>Objective</h2>
<h2>registration</h2>

<h3>&nbsp;</h3>
<p>Reg. No Under BPT Act. 1950 F 9852-THANE<BR /><BR />
Regn. No. Under Soc. Registration Act 1860 MAH / 812-2001 / THANE</p>
<embed src="images/looog.swf" width="128" height="96" quality="high" type="application/x-shockwave-flash" wmode="transparent">
      </embed>
<h2>Sponsors</h2>
<div style="background-color:#FFF"><a href="http://zen.ae"><img src="http://zen.ae/images/zensmall.png" width="127" height="42" border="0"/></a></div><br />
<div style="background-color:#FFF"><img src="images/cutech.png" width="127" height="42" border="0"/></div><br />

    </td>
    <td id="colTwo" valign="top">
    <h2>Sign Up</h2>
<table width="707" border="0" id="stylized"><form action="insd.asp" method="post"  name="form1" id="form1">
  <tr>
    <td width="107">&nbsp;</td>
    <td>&nbsp;</td>
    <td><%if mis="y" then%>Thank you<%elseif mis="n" then%><font color="#FF0000">Some fields are blank</font><%end if%>&nbsp;</td>
    <td width="10">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="152">Full Name</td>
    <td width="420">
      
      <input type="text" name="textfield" id="textfield" />
      
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Date of birth</td>
    <td>
      <select name="DDay" size="1"  id="DDay">
        <option value = ""> Date</option>
        <%
							for i = 1 to  31
							%>
        <option value = "<%=i%>"><%= i %></option>
        <%
							next
							%>
        </select>
      <select name="DMonth" size="1" id="DMonth">
        <option value = ""> Month</option>
        <%
							for i = 1 to  12
							
							%>
        <option value = "<%=i%>"><%=i%></option>
        <%
							next
							%>
        </select>
      <select name="DYear" size="1"  id="DYear">
        <option value = ""> Year</option>
        <%
							for i = 1920 to  year(now())
							%>
        <option value = "<%=i%>"><%=i%></option>
        <%
							next
							%>
        </select>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Residential address</td>
    <td>
      <input type="text" name="textfield3" id="textfield3" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Mobile</td>
    <td>
      <input type="text" name="textfield4" id="textfield4" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Email</td>
    <td>
      <input type="text" name="textfield2" id="textfield2" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>In Diamond since</td>
    <td>
      <input type="text" name="textfield5" id="textfield5" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Sports</td>
    <td>
      <input type="text" name="textfield6" id="textfield6" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Acheivement</td>
    <td>
      <input type="text" name="textfield7" id="textfield7" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Feild position</td>
    <td>
      <input type="text" name="textfield8" id="textfield8" />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">About Me</td>
    <td>
      <textarea name="textfield9" cols="16" rows="3"></textarea>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
      <input type="submit" name="button" id="button" value="Submit" />
    </td>
    <td>&nbsp;</td>
  </tr></form>
</table>
    </td>
    <td id="colThree" valign="top">
   <h2>Links</h2>
<h3 align="center"><a href="http://www.fifa.com/" target="_blank"><img src="images/wc2010logo.png" width="100" height="104" border="0"/></a><h3><br />
<h3 align="center"><a href="http://www.the-aiff.com/" target="_blank"><img src="images/logo.jpg" width="94" height="104" border="0" /></a></h3><br />
<h3 align="center"><img src="images/smileylarge.gif" width="120" height="226" /></h3>
</div>
    </td>
  </tr>
</table>

</body>
</html>
