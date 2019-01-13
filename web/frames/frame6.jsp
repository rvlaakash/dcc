<%-- 
    Document   : frame6
    Created on : Aug 6, 2018, 3:43:31 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href='../pro.css' rel='stylesheet' type='text/css'>
         <style>
            button:hover {
    /* Start the shake animation and make the animation last for 0.5 seconds */
    animation: shake 1s; 
    /* When the animation is finished, start again */
    animation-iteration-count: 1; 
}

@keyframes shake {
    0% { transform: translate(1px, 1px) rotate(0deg); }
    10% { transform: translate(-1px, -2px) rotate(-1deg); }
    20% { transform: translate(-3px, 0px) rotate(1deg); }
    30% { transform: translate(3px, 2px) rotate(0deg); }
    40% { transform: translate(1px, -1px) rotate(1deg); font-size: 18px;}
    50% { transform: translate(-1px, 2px) rotate(-1deg);font-size: 18px; color:black; }
    60% { transform: translate(-3px, 1px) rotate(0deg); font-size: 18px;}
    70% { transform: translate(3px, 1px) rotate(-1deg); }
    80% { transform: translate(-1px, -1px) rotate(1deg); }
    90% { transform: translate(1px, 2px) rotate(0deg); }
    100% { transform: translate(1px, -2px) rotate(-1deg); }
}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="">
        <div style="float: right; margin-right: 15px; "><form action="../pages/Logout.jsp">
               <img src="../image/user.png" width="25px" height="25px" /> &nbsp;<b> <%= session.getAttribute("PRN") %></b>
               &nbsp;
               <button class="btn btn-primary" style="width: 100px;  "  formtarget="_parent" formaction="../pages/Logout.jsp" type="submit"><b>LogOut</b></button>
        </form></div>
        <form action="../index.jsp" style="margin-top: 5px;">
            
             &nbsp;
             <button class="btn btn-primary"style="width: 160px;  " formtarget="main" formaction="../Display/profile.jsp"  type="submit"> <b >Profile</b></button>
              &nbsp;
              <button class="btn btn-primary" style="width: 160px" formtarget="main" formaction="../pages/result.jsp" type="submit"><b>Result</b></button>
           &nbsp;
              <button class="btn btn-primary" style="width: 160px" formtarget="main" formaction="../pages/timetable.jsp" type="submit"><b>Time table</b></button>
          &nbsp;
              <button class="btn btn-primary" style="width: 162px" formtarget="main" formaction="../pages/examtita.jsp" type="submit"><b>Exam Time table</b></button>
       &nbsp;
              <button class="btn btn-primary" style="width: 160px" formtarget="main" formaction="../pages/examtita.jsp" type="submit"><b>Attendance</b></button>
      &nbsp;
      <button class="btn btn-primary" style="width: 160px" formtarget="main" formaction="../pages/contact.jsp" type="submit"><b>Contact Us</b></button>
                <br/>
        </form>
      
       
    </body>
</html>
