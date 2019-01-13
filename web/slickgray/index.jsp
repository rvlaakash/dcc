<%@page import="javafx.scene.control.Alert"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- 
    Document   : result1
    Created on : Aug 10, 2018, 9:53:49 PM
    Author     : Akash Raval < rvlaakash@gmail.com >
--%>
<!Encription : BLBTI SBWBM (Don't Remove It.) 6575658372 8265866576>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="../image/logo1.jpg" type="image/x-icon"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=0.38"/>
 <script src='https://code.responsivevoice.org/responsivevoice.js'> </script>
         
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Digital Campus Connect</title>

    <script src='https://code.responsivevoice.org/responsivevoice.js'></script>

</head>

    <body oncontextmenu="return false" onload='responsiveVoice.speak("Welcome  to digital campus connect");'>
    <div id="container">
		<div id="header">
        	<h1>Digital <span class="off">Campus Connect</span></h1>
                <h2>We Connect Student with Campus</h2>
                </div>   
        
    <%
     
      
      
   if (session.getAttribute("PRN") == null || session.getAttribute("PRN").equals(""))
   {  
       out.print("  <script>alert('PRN or password is Wrong !!');</script>"); 
        response.sendRedirect("../index.jsp");
   }
   
    %>
       <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="http://www.spu.ac.in" target="iframe_a">Home</a></li>
                <li class="menuitem"><a href="../Display/profile.jsp" target="iframe_a">Profile</a></li>
                <li class="menuitem"><a href="../pages/result1.jsp" target="iframe_a" onclick=" responsiveVoice.speak('Best Of Luck,To,You,,From Digital CAMPUS connect');">Result</a></li>
                <li class="menuitem"><a href="../pages/timetable.jsp" target="iframe_a" >Timetable</a></li>
                <li class="menuitem"><a href="../pages/examtimetable.jsp" target="iframe_a">Exam Timetable</a></li>
                <li class="menuitem"><a href="../pages/examtita.jsp" target="iframe_a">Attendance</a></li>
                <li class="menuitem"><a href="../pages/contact.jsp" target="iframe_a">Contact Us</a></li>
                <li class="menuitem" style="float: right"><a href="../pages/Logout.jsp"  target="_blank" onclick="window.close();" >Logout</a></li>
                <li class="menuitem" style="float: right "><a href="../Display/profile.jsp" target="iframe_a" style=""> <img src="../image/user.png" width="25px" height="25px" /> <text style="font-size: 10px; "><%=session.getAttribute("PRN")%></text></a></li>
                
                </ul>
        </div>
		<div id="content">
                    
                    <div >
                        <iframe  src="http://www.spu.ac.in" style="  width: 100%;" name="iframe_a" height="900px" frameborder="0" ></iframe>
                    </div></div>
        <!--<div id="content">
            <iframe  src="../pages/footer.jsp" style="  width: 100%;" name="iframe_a" height="335px" frameborder="0" ></iframe>
                    
        </div>
    -->
    </div>
</body>
</html>
