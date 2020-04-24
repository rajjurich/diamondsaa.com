<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="genfuncs.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="SHORTCUT ICON" href="images/dialogo.ico">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/def.css" rel="stylesheet" type="text/css" />
<link href="css/tip.css" rel="stylesheet" type="text/css" />
<script src="js/tiptool.js" type="text/javascript" language="javascript"></script>
<script src="js/tip.js" type="text/javascript" language="javascript"></script>
<title>Diamond Sports Association</title>
</head>
<%
dim conn
  readydbcon
  sqlselect="select * from ticker"
  set rs_selectticker=conn.execute(sqlselect)
  
%>
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

<%
	while not rs_selectticker.eof%>
	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif"  border=0>
    <%
	response.Write(rs_selectticker("tickername"))%>
	
    
    <!--Merry Christmas and happy new year 2011--><img src="images/sample1_icon.gif" border=0></li>
    <%
    rs_selectticker.movenext
	wend
	
	%>

	<!--<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>we are coming soon, site under construction.<img src="images/sample1_icon.gif" border=0></li>

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>for sign up click <a href="signup.asp"><u>here</u></a><img src="images/sample1_icon.gif" border=0></li>

	<li delay=2 style="width:470;"><img src="images/sample1_icon.gif" border=0>Powered by <a href="http://zen.ae" target="_blank"><u>zen interactive technologies</u></a><img src="images/sample1_icon.gif" border=0></li>-->

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
<li><a href="gallery.asp" accesskey="2" title="">gallery</a></li>
<li><a href="events.asp" accesskey="3" title="">events</a></li>
<li><a href="signup.asp" accesskey="4" title="">signup</a></li>
<li><a href="members_area.asp" accesskey="5" title="">members area</a></li>
<li><a href="contacts.asp" accesskey="6" title="">Contact Us</a></li>

</ul>
</div>
<div id="divider">&nbsp;</div>

<table width="1000" cols = "5" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr valign="top">
    <td colspan="5">
    	<table width="1000" cols="5" align="center" id="content">
        	<tr valign="top">
            	<td colspan="1" id="colOne">

<h2>registration</h2>


<p><font face="Verdana, Geneva, sans-serif" color="#1a5400">Reg. No Under BPT Act. 1950 F 9852-THANE<BR /><BR />
Regn. No. Under Soc. Registration Act 1860 MAH / 812-2001 / THANE</font></p>
<h2>Our Partners</h2>
<p style="color:#000499"> <strong>Fatima High School</strong></p>
<embed src="images/looog.swf" width="128" height="96" quality="high" type="application/x-shockwave-flash" wmode="transparent">
      </embed>
      
<h2>Sponsors</h2>
<div style="background-color:#FFF"><a href="http://zen.ae"><img src="images/zen_full.jpg" width="128" height="66" border="0"/></a></div><br />
<div align="center"><a href="http://www.adaepl.com/index.html" target="_blank"><img src="images/Ad_associate.png" border="0"/></a></div><br />
<div><img src="images/cutech.png" width="128" height="130" border="0"/></div><br />
<div style="background-color:#FFF"><img src="images/dubai.png" width="128" height="42" border="0"/></div><br />
                </td>
                <td colspan="1" width ="1" style="border-left:1px solid #090"></td>
                <td colspan="1" id="colTwo">
                <h2>Xavier Dcosta :</h2>
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="255" align="left" valign="top">
            
			<!--<ul type="circle">
                	<li>Started playing football since the year 1985. Played for school  ‘Fatima High School’ since 1988 at National level Under -14.</li><br />
                    <li>Played  Nationals Under -17  in the year  1991-92</li><br />
                    <li>Played for RKT College for 2 consecutive years in Under -19 Nationals.</li><br />
                    <li>Represented Maharashtra for under -19 junior nationals.</li><br />
                    <li>Represented Maharashtra for under -21 junior nationals.</li><br />
                    <li>Played for Tata Electric Company in the year 1993-94 Senior Division.</li>
                    </ul>-->
                    <img src="images/Xavier.jpg" border="0" width="227" height="251" alt="Xavier Dcosta" />
            </td >
          <td width="210" align="left" valign="top" ><!--<img src="images/Xavier.jpg" border="0" width="227" height="251" alt="Xavier Dcosta" />--></td >

        </tr>
        
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="left" valign="top"> 
          <!--<ul type="circle">
              <li>Played for Tipu Sultan Club in the year 1995-96  Senior Division.</li><br />
                    <li>Played for Mumbai Customs Football Team  in the year  1996-97 in Super Division.</li><br />
                    <li>Played for Air India Football  Club Elite Division from the year to 1997 to 2003 under National Coach Bimal Ghosh.</li><br />
                    <li>Played for East Bengal  for loan basis.</li><br />
                    <li>Played for Bengal Mumbai Football Club (BMFC)  under International Player and National coach Sayyed Nayeemuddin, recipient of Dhronacharya Award.</li><br />
                    <li>Played for Sporting Clube de Goa , Goa under nigerian coach Clifford chukwama.</li><br />
                    <li>Playing  and employed with Central Railway.</li><br />
                    <li>Represented Maharashtra for National games held at Hyderabad.</li><br />
                    <li>Represented Maharashtra for Santosh Trophy. </li><br />
                    <li>Played various tournaments such as Durand Cup, DCM Cup, Governer’s Gold Cup, Sikkim, Federation Cup, Bhutan Federation Cup, IFA Shields Cup, Rover’s Cup, Bardoli Cup, Scissors Cup under various clubs.</li><br />
                    </ul>-->
                  </td >
        </tr>
        <tr> 
          <td height="10"> <div align="left"></div></td >
        </tr>
      </table>  
                
      </td>
                <td colspan="1" width ="1" style="border-left:1px solid #090"></td>
              <td align="center" colspan="1" id="colThree">

<h2>Links</h2>
<h3 align="center"><a href="http://www.fifa.com/" target="_blank"><img src="images/wc2010logo.png" width="100" height="104" border="0"/></a><h3><br />
<h3 align="center"><a href="http://www.the-aiff.com/" target="_blank"><img src="images/logo.jpg" width="94" height="104" border="0" /></a></h3>
<br />
<h3 align="center"><img src="images/smileylarge.gif" width="120" height="226" /></h3>
</div>
<br />
<h2>Afilations</h2>
<h3 align="center"><a href="http://tdfa.org/" target="_blank" title=""><img src="images/TDFA.png" width="110" height="95" border="0" /></a></h3>
<br />
<h3 align="center"><span class="toolTipElement"  title="Western India Football Association"><img src="images/WIFA.png" width="100" height="32" /></span></h3>
<br /><br />
<h3 align="center"><a href="testimonials.asp"><img src="images/testimonial.png" width="110" height="130" border="0" /></a></h3><br />
              </td>
            </tr>
        </table>
    </td>
  </tr>
</table>
<div id="divider">&nbsp;</div>
 
<div id="footer" align="center" >
	<div id="space">&nbsp;</div>
	<a href="about.asp" title="">About us</a>&nbsp;&nbsp;&nbsp;
    <a title="" href="images/foot_spacer.gif">|</a>
	<a href="gallery.asp" accesskey="2" title="">Gallery</a>&nbsp;&nbsp;&nbsp;
    <a title="" href="images/foot_spacer.gif">|</a>
	<a href="events.asp" accesskey="3" title="">Events</a>&nbsp;&nbsp;&nbsp;
    <a title="" href="images/foot_spacer.gif">|</a>
	<a href="signup.asp" accesskey="4" title="">Signup</a>&nbsp;&nbsp;&nbsp;
    <a title="" href="images/foot_spacer.gif">|</a>
	<a href="members_area.asp" accesskey="5" title="">Member area</a>&nbsp;&nbsp;&nbsp;
    <a title="" href="images/foot_spacer.gif">|</a>
	<a href="contacts.asp" accesskey="6" title="">Contact us</a>
    <br /><br/>
    Copyright &copy; 2010<script type="text/javascript">
<!--
var currentTime = new Date()

var year = currentTime.getFullYear()

if(year==2010)
{
	year=''
}

else
{
	year=' - '+year
}
document.write(year)
//-->
</script>. All Rights Reserved.  Powered By <a href="http://zen.ae">Zen Interactive Technologies</a>&nbsp;&nbsp;&nbsp;<!-- {%FOOTER_LINK} -->
	</div>
    
</body>
</html>
