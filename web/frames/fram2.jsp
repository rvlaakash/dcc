<%-- 
    Document   : fram2
    Created on : Jul 22, 2018, 1:33:48 PM
    Author     : Akash Raval (rvlaakash@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href='../form2.css' rel='stylesheet' type='text/css'>
        <link href='../pro.css' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Button</title>
    </head>
    <body oncontextmenu="return false" style="background-color: #AAAAAA;">
       
           <br/>
          <div class="panel-heading">
              <h1 class="panel-title">Profile</h1>
            </div> <br/>
       
       
        
        <div class="panel-footer" >
            <br/>
        <br/>
        <form action="../index.jsp">
            <button class="btn btn-primary"style="width: 150px" formtarget="main" formaction="../Display/profile.jsp"  type="submit"> <b>Profile</b></button>
        </form>
        <br/>
        <br/>
        <form action="../index.jsp">
            <button class="btn btn-primary" style="width: 150px" formtarget="main" formaction="../pages/result.jsp" type="submit"><b>Result</b></button>
        </form>
        <br/>
        <br/>
        <form action="../index.jsp">
            <button class="btn btn-primary" style="width: 150px" formtarget="main" formaction="../pages/login.jsp" type="submit"><b>Time table</b></button>
        </form>
        <br/>
        <br/>
        <form action="../index.jsp">
            <button class="btn btn-primary" style="width: 150px" formtarget="main" formaction="../pages/login.jsp" type="submit"><b>Exam Time table</b></button>
        </form>
        <br/>
        <br/>
        <form action="../pages/Logout.jsp">
            <button class="btn btn-primary" style="width: 150px" formtarget="_parent" formaction="../pages/Attendence.jsp" type="submit"><b>Attendance</b></button>
        </form>
        <br/>
       
        <br/><br/>
        <br/><br/>
        
        </div>
    </body>
</html>
