<%-- 
    Document   : fram2
    Created on : Jul 22, 2018, 1:33:48 PM
    Author     : Akash Raval (rvlaakash@gmail.com)
--%>

<%@page import= "javax.swing.JOptionPane"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
 

<html><head>
    <title>SPCE Portal</title>
    <link href='../form2.css' rel='stylesheet' type='text/css'>
    <link href='../Display/profile.jsp' rel='stylesheet' type='text/css'>
    
    <script language="javascript" type="text/javascript">
        function printDiv(divID) {
            
            var divElements = document.getElementById(divID).innerHTML;
          
            var oldPage = document.body.innerHTML;

            
            document.body.innerHTML = 
              "<html><body  style='background-color: #ffffff;  '><hr/><div style='float: right; font-size: 20;'><center><text style='font-size: 28px;color: #ff6633'> <b>Sankalchand Patel University </b></text> <br/><text>	Ambaji-Gandhinagar State Highway, Visnagar-384315 <br/>  Statement Printed From <b>Sankalchand Patel University</b>  Portal Home Page <br/><b>Statement of Grade for Faculty of Engineering & Technology Bachelor of Technology in Information and Technology <br/>Sem IV Examination: Summer Exam-2018 Regular</b> </text></center></div><br/><center><div style='margin-top: 200px; font-size: 16px;'>" + 
              divElements + "</center></div></body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;

          
        }
    </script>
    
  </head>
  <body oncontextmenu="return false"  style="background-color: #ecf0f1;  " >
<link href='form.css' rel='stylesheet' type='text/css'>

  

    <%
    // String PRN   = request.getParameter("PRN1");
        String PRN=(String)session.getAttribute("PRN");
     String name1 ="",Dept1="";
     int sem1 = 0,sum=0;
     int marks[]=new int [7];
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
		JOptionPane.showMessageDialog(null, e);
	}

 %>
  <center><text style="font-size: 28px; color: #ff6633"> <b>Sankalchand Patel University </b></text></center> 
  <div class="box2"  id="printablediv" style="height: 160px; margin-left: 350px; font-size: 20px">
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
                String sql ="SELECT * FROM `Marks` WHERE `PRN`= '"+PRN+"';" ;
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
	}
	catch(Exception e)
	{
		JOptionPane.showMessageDialog(null, e);
	}
        %>
        
         <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#999; }
.tg td{font-family:Arial, sans-serif;font-size:12px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
.tg th{font-family:Arial, sans-serif;font-size:13px;font-weight:bold;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
.tg .tg-audg{color: wheat; font-weight:bold;font-size:15px;font-family:Arial, Times, serif !important;;text-align:center; background-color: black}
.tg .tg-1fyo{background-color:#D2E4FC;font-size:14px;font-family:Arial, Times, serif !important;color: black}
.tg .tg-wvtc{font-size:14px;font-family:Arial, Times, serif !important;background-color: #ccffcc;color: black}
.tg .tg-saqj{font-size:14px;font-family:Arial, Helvetica, sans-serif !important;}
</style>
        <table border="2"class="tg" width="600" >
             <tr height="40">
                 <th >Subject</th>
                <th >Marks</th>
                
            </tr>
            <tr height="25">
                <td class="tg-wvtc">  Advance Java Programming </td>
                <th class="tg-wvtc"><%=marks[1]%></th>
                
            </tr>
             <tr height="25">
                 <td class="tg-1fyo">  System Programming </td>
                 <th class="tg-1fyo"><%=marks[2]%></th>
                
            </tr>
             <tr height="25">
               
                  <td class="tg-wvtc">  Interfaceing and Application</td>
                   <th class="tg-wvtc"><%=marks[3]%></th>
                     
                
            </tr>
             <tr height="25">
              
                   <td class="tg-1fyo">  Design and Analysis of algorithm </td>
                   <th class="tg-1fyo"><%=marks[4]%></th>
                     
                
            </tr>
            <!-- <tr height="25">
               
                    <td>  Disaster Management</td>
                     <th><%=marks[5]%></th>
                
            </tr>-->
             <tr height="25">
               
                     <td class="tg-wvtc">  Web Technology</td>
                     <th class="tg-wvtc"><%=marks[6]%></th>
                
            </tr>
            
             <tr height="25">
               
                 <th class="tg-audg"> Total Marks</th>
                 <th class="tg-audg"> <%=sum%> </th>
                
            </tr>
            
             
            
        </table>
        
                 </div>
  <center>
                 <div style="float: right; margin-top: -170px; margin-right:9px">
                     <button title="Print" class="btn" onclick="javascript:printDiv('printablediv')" value="Print" name="Print" style=" margin-top: 0px;  " >Print</button></div>
  </center>
  </body>
</html>
