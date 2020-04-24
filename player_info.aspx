<%@ Page Language="VB" AutoEventWireup="false" CodeFile="player_info.aspx.vb" Inherits="player_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="SHORTCUT ICON" href="images/dialogo.ico">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/def0.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/pro_dropdown_2.css" />
<script src="js/stuHover.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="css/contentslider.css" />

<script type="text/javascript" src="js/contentslider.js">

/***********************************************
* Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<!--Hide unhide script-->
<script language="JavaScript">
//here you place the ids of every element you want.
var ids=new Array('a1','a2','a3','thiscanbeanything','thiscanbeanything1','thiscanbeanything2','thiscanbeanything3','thiscanbeanything4');

function switchid(id){	
	hideallids();
	showdiv(id);
}

function hideallids(){
	//loop through the array and hide each element by id
	for (var i=0;i<ids.length;i++){
		hidediv(ids[i]);
	}		  
}

function hidediv(id) {
	//safe function to hide an element with a specified id
	if (document.getElementById) { // DOM3 = IE5, NS6
		document.getElementById(id).style.display = 'none';
	}
	else {
		if (document.layers) { // Netscape 4
			document.id.display = 'none';
		}
		else { // IE 4
			document.all.id.style.display = 'none';
		}
	}
}

function showdiv(id) {
	//safe function to show an element with a specified id
		  
	if (document.getElementById) { // DOM3 = IE5, NS6
		document.getElementById(id).style.display = 'block';
	}
	else {
		if (document.layers) { // Netscape 4
			document.id.display = 'block';
		}
		else { // IE 4
			document.all.id.style.display = 'block';
		}
	}
}
</script>
<!--   Hide unhide script END  -->
<title>Diamond Sports Association</title>
</head>
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

<div id="menu">
    <ul>
	<li><a href="javascript:switchid('a1');">Player Info</a>
    <ul>
    <li><a href="javascript:switchid('a2');">Team A</a></li>
    <li><a href="javascript:switchid('a3');">Team B</a></li>
    <li><a href="javascript:switchid('thiscanbeanything');">Coach</a></li>
    <li><a href="javascript:switchid('thiscanbeanything1');" title="">Members</a></li>
    </ul>
    </li>
	<li><a href="javascript:switchid('thiscanbeanything2');" title="">Fees Dues</a></li>
	<li><a href="javascript:switchid('thiscanbeanything3');" title="">Internal circulars</a></li>
	<li><a href="javascript:switchid('thiscanbeanything4');" title="">Training Tips</a></li>
    <li><a href="signout.aspx" title="">Sign Out</a></li>
  </ul>

</div>
<div id="divider">&nbsp;</div>
<table width="1000" cols = "5" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr valign="top">
    <td colspan="5">
    	<table width="1000" cols="5" align="center" id="content">
        	<tr valign="top">
            	<td colspan="1" id="colOne">
				<h2>Teams</h2>
                 
    <div id="categories">
    <ul>
    <li class="noend"><a href="javascript:switchid('a2');">Team A</a></li>
    <li class="noend"><a href="javascript:switchid('a3');">Team B</a></li>
    <li class="noend"><a href="javascript:switchid('thiscanbeanything');">Coach</a></li>
    <li class="noend"><a href="javascript:switchid('thiscanbeanything1');" title="">Members</a></li>
	<li class="noend"><a href="javascript:switchid('thiscanbeanything2');" title="">Fees Dues</a></li>
	<li class="noend"><a href="javascript:switchid('thiscanbeanything3');" title="">Internal circulars</a></li>
	<li class="end"><a href="javascript:switchid('thiscanbeanything4');" title="">Training Tips</a></li>
    </ul>
    </div>
  

                </td>
                <td colspan="1" width ="1" style="border-left:1px solid #090"></td>
                <td colspan="1" id="colTwo">
                <h2>Welcome <asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label> ,</h2>
              
                 <div id='a1' style="display:block;"><strong><u>Coach : Denis George</u></strong><br />
                 <div><strong><u>Team A :</u> </strong>
                    <p>Ravikant (GK), Durga, Benjamin, Joysamraj, Shinto, Fritz, Forsyt, Johnson, Shahrukh, Vernon, Jerry, Vicky,<br />Sijo, Inas, Atlee, Umesh.</p></div>
                   <div><strong><u>Team B :</u> </strong>
                    <p>Vipin (GK), Rahul, Deepu, Ivan, Reuben, Noel, Jacob, Vivian, Prashant, Farookh, Joel, Rupesh,<br /> Arnold, Jason, Azad, Raju.</p></div>
                 <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>

                 </div><br />
                
                    
                <div id='a2' style="display:none;"><strong><u>Team A :</u> </strong>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                     <div id='a3' style="display:none;"><strong><u>Team B :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                    <div id='thiscanbeanything' style="display:none;"><strong><u>Coach :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                  <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                    <div id='thiscanbeanything1' style="display:none;"><strong><u>Members :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                    <div id='thiscanbeanything2' style="display:none;"><strong><u>Fees Dues Details :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                    <div id='thiscanbeanything3' style="display:none;"><strong><u>Internal circulars :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                   <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
                    
                    <div id='thiscanbeanything4' style="display:none;"><strong><u>Training Tips :</u> </strong>
                    <p>&nbsp;</p>
                     <p>&nbsp;</p>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <div><strong><u>&nbsp;</u> </strong>
                    <p>&nbsp;</p></div>
                    <table width="698px" border="0" class="tb1">
  <tr>
    <td height="123" >&nbsp;</td>
    <td ><a href="#"></a></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="127"></td>
    <td><a href="#"></a></td>
    <td>&nbsp;</td>
  </tr>
  
  </table><br>
                    </div>
               
                </td>
                <td colspan="1" width ="1" style="border-left:1px solid #090"></td>
                <td align="center" colspan="1" id="colThree">
                <h2>Links</h2>
              </td>
            </tr>
        </table>
    </td>
  </tr>
</table>

 <div id="divider1">&nbsp;</div>
   
 
    <div id="footer" align="center" >
    <br /><br />
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
    </script>. All Rights Reserved.  Powered By <a href="http://zen.ae" target="_blank">Zen Interactive Technologies</a>&nbsp;&nbsp;&nbsp;<!-- {%FOOTER_LINK} -->
	</div>
	
   
</body>
</html>
