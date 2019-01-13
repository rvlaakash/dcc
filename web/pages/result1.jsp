<%-- 
    Document   : result1
    Created on : Aug 10, 2018, 9:53:49 PM
    Author     : Akash Raval < rvlaakash@gmail.com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.swing.JOptionPane"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
 

<!DOCTYPE html>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
  <script language="javascript" type="text/javascript">
        function printDiv(divID) {
            
            var divElements = document.getElementById(divID).innerHTML;
          
            var oldPage = document.body.innerHTML;

            
            document.body.innerHTML = 
              "<html><body  style='background-color: #ffffff;  '><hr/><div style=' font-size: 20;'><center><text style='font-size: 28px;color: #ff6633;'> <b>Sankalchand Patel University </b></text> <br/><text>	Ambaji-Gandhinagar State Highway, Visnagar-384315 <br/>  Statement Printed From <b>Digital Campus Connect</b>  Portal Home Page <br/><b>Statement of Grade for Faculty of Engineering & Technology Bachelor of Technology in Information and Technology <br/>Sem IV Examination: Summer Exam-2018 Regular</b> </text></center></div><br/><center><div style='margin-top: 50px; font-size: 16px;'>" + 
              divElements + "</center></div></body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;

          
        }
    </script>
    
</head>
<body oncontextmenu="return false">
   <%
    response.setIntHeader("refresh", 60);
    // String PRN   = request.getParameter("PRN1");
        String PRN=(String)session.getAttribute("PRN");
     String name1 ="",Dept1="";
     int sem1 = 0,sum=0;
     int marks[]=new int [7];
     String subject[]=new String [8];
     int  dd=0,mm=0,yy=0;
     
     //String dd  = request.getParameter("DOBDay");
     //String mm  = request.getParameter("DOBMonth");
     //String yy  = request.getParameter("DOBYear");
    
        

	String url="jdbc:mysql://127.0.0.1:3306/spce";
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url,"root","");
                String sql ="select FNAME,MNAME,LNAME,DEPT,SEM from student where PRN='"+PRN+"';" ;
		Statement st= conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		name1=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3);
		Dept1=rs.getString(4);
		sem1=rs.getInt(5);
               
           
		conn.close();
	}
	catch(Exception e)
	{
             out.print("  <script>alert('You have Login Again !!');</script>");  
             
     
		//JOptionPane.showMessageDialog(null, e);
           response.sendRedirect("Display.jsp");
	}

 %>
 <div style="margin-top: 80px">
 <center><text style="font-size: 28px; color: #ff6633"> <b>Sankalchand Patel University </b></text></center>
 <div class="container" id="printablediv" style="font-size: 18px;">
  
      <br/><table >
          <tr  >
              <td><b >Name  </b></td>
              <td><text>: <b><%=name1%></b></text></td>
          </tr>
          <tr>
              <td><b >PRN  </b></td>
              <td><text><text>: <%=PRN%></text></text></td>
          </tr>
          <tr>
              <td><b>College</b></td> <td>: Sankalchand Patel College of Engineering, Visnagar (06)</td>

             
          </tr>
          <tr>
              <td> <b >Department  </b></td>
              <td> <text>: <%=Dept1%></text> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <b >Sem  </b>
              <text>: <%=sem1%>th</text></td>
          </tr>
          <tr>
              <td><b>Medium</b></td>
              <td>: English</td>
          </tr>
       
      </table>
   
    
 <%     try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url,"root","");
                String sql ="SELECT * FROM `MARKS_"+sem1+"` WHERE `PRN`= '"+PRN+"';" ;
                String sql1="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'MARKS_"+sem1+"' ORDER BY ORDINAL_POSITION";
                Statement st= conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
               
		//rs.next();
                while(rs.next())
                {
                    for(int i=1;i<7;i++)
                    {
                      marks[i]=rs.getInt(i);
                      sum=sum+marks[i];
                    }
                }
                 Statement st1= conn.createStatement();
                  ResultSet rs1=st1.executeQuery(sql1);
                  int i=1;
                 while(rs1.next())
                {
                   
                      subject[i]=rs1.getString(1);
                      
                    i++;
                }
                
	}
	catch(Exception e)
	{
		JOptionPane.showMessageDialog(null, e);
                
	}
        %>
    
<h1></h1>
  <div class="table-responsive">      
       <table class="table">
    <thead>
      <tr>
        <th >Subject</th>
                <th >Marks</th>
        
      </tr>
    </thead>
    <tbody>
        <%
            for (int i=1;i<marks.length;i++)
            {
                
            
        %>
        <tr>
          <td class="tg-wvtc"> <%=subject[i]%> </td>
                <th class="tg-wvtc"><%=marks[i]%></th>
      </tr>
        <%
            }
        %>
         <tr>
         <th class="tg-audg"> Total Marks</th>
                 <th class="tg-audg"> <%=sum%> </th>
      </tr>
    </tbody>
      </table>
      
      
      
 <!--<table class="table">
    <thead>
      <tr>
        <th >Subject</th>
                <th >Marks</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
          <td class="tg-wvtc">  Advance Java Programming <%=subject[1]%> </td>
                <th class="tg-wvtc"><%=marks[1]%></th>
      </tr>
       <tr>
        <td class="tg-1fyo">  System Programming <%=subject[2]%> </td>
                 <th class="tg-1fyo"><%=marks[2]%></th>
      </tr>
       <tr>
        <td class="tg-wvtc">  Interfaceing and Application</td>
                   <th class="tg-wvtc"><%=marks[3]%></th>
      </tr>
       <tr>
        <td class="tg-1fyo">  Design and Analysis of algorithm </td>
                   <th class="tg-1fyo"><%=marks[4]%></th>
      </tr>
       <tr>
        <td class="tg-wvtc">  Web Technology</td>
                     <th class="tg-wvtc"><%=marks[6]%></th>
      </tr>
       <tr>
         <th class="tg-audg"> Total Marks</th>
                 <th class="tg-audg"> <%=sum%> </th>
      </tr>
    </tbody>
  </table>-->
  </div>
</div>
 
 <center><div style=" margin-top: 10px; ">
         <button title="Print"  onclick="javascript:printDiv('printablediv')" value="Print" name="Print" style=" margin-top: 0px; width: 180px; height: 60px; border: #ff6633 outset medium" class="button button2">Print</button></div></center>
 
 </div>
</body>
</html>
