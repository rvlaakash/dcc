<%-- 
    Document   : result1
    Created on : Aug 10, 2018, 9:53:49 PM
    Author     : Akash Raval < rvlaakash@gmail.com >
--%>

<!Encription : BLBTI SBWBM (Don't Remove It.) 6575658372 8265866576>
<html>
    
    <head>
       <link rel="shortcut icon" href="image/logo1.jpg" type="image/x-icon"/>
        <title>
           
           Student Login
        </title>
       <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
       <script src='capcha.js'>  </script>
       <style >
           .no_select
{
	font-size:30px;
	font-weight:bold;
        color: #555555;
	-webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    cursor: none;
}
       </style>
    </head>
    
   
    
    <body  oncontextmenu="return false" onload="responsiveVoice.speak('Welcome  to digital campus connect'); DrawCaptcha();"  >
<link href='form.css' rel='stylesheet' type='text/css'>
<div class="db1c"> <img src="image/logo.png" width="270" height="90"/><text>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </text><img src="image/logo3.png" width="500" height="80"/></div>
<form method="post" action="process.jsp" onsubmit="return ValidCaptcha();">
    
    <div class="box"  style="margin-top: 60px;">
        <br/><img src="image/Login.png" width="270" height="90"/>

<br/>
<input type="text" name="PRN1" value="20160959000" onFocus="field_focus(this, 'PRN');" onblur="field_blur(this, 'PRN');" class="PRN" style="color : #000000" />


<br/>

<!--<select name="DOBDay">
	<option> - Day - </option>
	<option value="1">01</option>
	<option value="2">02</option>
	<option value="3">03</option>
	<option value="4">04</option>
	<option value="5">05</option>
	<option value="6">06</option>
	<option value="7">07</option>
	<option value="8">08</option>
	<option value="9">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
</select>

<select name="DOBMonth">
	<option> - Month - </option>
	<option value="1">January</option>
	<option value="2">Febuary</option>
	<option value="3">March</option>
	<option value="4">April</option>
	<option value="5">May</option>
	<option value="6">June</option>
	<option value="7">July</option>
	<option value="8">August</option>
	<option value="9">September</option>
	<option value="10">October</option>
	<option value="11">November</option>
	<option value="12">December</option>
</select>

<select name="DOBYear">
	<option> - Year - </option>
	<option value="1999">1999</option>
	<option value="1998">1998</option>
	<option value="1997">1997</option>
	
</select>-->
<input type="password" name="PASS" placeholder="****************" onFocus="field_focus(this, 'PASS');" onblur="field_blur(this, 'PASS');" class="PRN" style="color : #000000; margin-top: 12px;" />
<div style="margin-top: 10px">
<input type="text" id="txtCaptcha" 
            style="background-image:url(1.jpg); text-align:center; border:none;
            font-weight:bold; font-family:Modern; font-size: 15px; width: 150px;"  disabled oncopy="return false" oncut="return false" onpaste="return false" class="no_select" />
<input type="button" id="btnrefresh" value="Refresh" onclick="DrawCaptcha();" style="background-color: lightgreen ; color: white; text-emphasis-style:  circle"/>
        <br/>
        <input type="text" id="txtInput" onpaste="return false" class="PRN" style="margin-top: 8px; width: 150px"/>    

</div>


<input type="reset" name="Reset" value="Reset" class="btn"/>
<input type="submit" name="Submit" value="Login" class="btn" />
<br/>
<br/>
  


</div> <!-- End Box -->
  
</form>

<p>Any Problem Here? <u style="color:#f1c40f;"><a href="pages/contact.jsp">Contact Authority !</a></u></p>
        </body>
  
</html>
