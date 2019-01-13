<%-- 
    Document   : data3
    Created on : Jul 22, 2018, 1:16:22 PM
    Author     : Akash Raval (rvlaakash@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="image/logo1.jpg" type="image/x-icon"/>
         <meta name="viewport" content="width=device-width, initial-scale=0.3">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Digital Campus Connect</title>
          
    </head>
     

    <%
    
    session.setAttribute("PRN",request.getParameter("PRN1"));
        
    %>
    <frameset rows = "80px,53px,540px,50px,*" style="background-color: #6666ff" >
      <frame name = "header" src = "frames/fram1.jsp"  scrolling="no"   noresize="noresize"/>
      <frame name = "menu" src = "frames/frame6.jsp"  scrolling="no"   noresize="noresize"/>
       
       <frameset cols = "80%">
           
                 
          
          <frame name = "main" src = "Display/profile.jsp"  noresize="noresize" scrolling="no"/>
          <frame  name = "left" src = "frames/fram2.jsp" frameborder="3" scrolling="no"  noresize="noresize"  />
          
           
      </frameset>
      <frame name = "bottom" src = "frames/fram5.jsp"   noresize="noresize" scrolling="no"/>
      <frame scr="frames/fram3.jsp"/>
      
      <noframes>
         <body>Your browser does not support frames.</body>
      </noframes>
      
   </frameset>
        
    
</html>
