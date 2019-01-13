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
  </head>
  <body>
<link href='form.css' rel='stylesheet' type='text/css'>
     
    <br/><br/>

    <%
     String PRN   = request.getParameter("PRN1");
     String name1 ="",Dept1="";
     int sem1 = 0,sum=0;
     int marks[]=new int [7];
     
     String dd  = request.getParameter("DOBDay");
     String mm  = request.getParameter("DOBMonth");
     String yy  = request.getParameter("DOBYear");
    %>
     <br>
    <%
        

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

 <div class="db1c"><img src="image/logo.png" width="270" height="90"/><text>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </text><img src="image/SD.png" width="250" height="60"/><img src="image/Portal_logo.png" width="250" height="60"/><br/> </div>

 
 <div class="box2" style="height: 160px">
        <div style="width: 120px; height: 200px; border: 5px; float: right; margin-right: 50px; margin-top: 10px;"><img src="profile/13715.JPG" width="150" height="190" /></div>
 
        <br/>
         <b >Name : </b> <text><%=name1%></text><br/>
         <b > PRN NO. : </b> <text><%=PRN%></text><br/>
        <b >Birth Date :</b> <text><%=dd%>/<%=mm%>/<%=yy%></text> <br/>
       
        <b >Department : </label> <text><%=Dept1%></text>
            <b >&nbsp;&nbsp;&nbsp; Sem : </b> <text><%=sem1%></text><br/>
      
             <a href="index.jsp"> <input type="submit" name="Submit" value="Back" class="btngt" /></a>

    </div>
    
           
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
        
        <table border="2"class="box3">
             <tr>
                <th >Subject</th>
                <th >Marks</th>
                
            </tr>
            <tr>
                <td>Advance Java Programming </td>
                <td><%=marks[1]%></td>
                
            </tr>
             <tr>
                 <td>System Programming </td>
                 <td><%=marks[2]%></td>
                
            </tr>
             <tr>
               
                  <td>Interfaceing and Application</td>
                   <td><%=marks[3]%></td>
                     
                
            </tr>
             <tr>
              
                   <td>Design and Analysis of algorithm </td>
                   <td><%=marks[4]%></td>
                     
                
            </tr>
             <tr>
               
                    <td>Disaster Management</td>
                     <td><%=marks[5]%></td>
                
            </tr>
             <tr>
               
                     <td>Web Techmology</td>
                     <td><%=marks[6]%></td>
                
            </tr>
            
             <tr>
               
                 <th> Total Marks</th>
                 <th> <%=sum%> </th>
                
            </tr>
            
             
            
        </table>
        
        
        
        
  <center><a title="Print Page" alt="printout" onclick="window.print();" target="" style="cursor: pointer; ">Print Result</a></center>
  <center><button title="Print" onclick="print();" value="Print" name="Print" style="width: 80px; height: 50px">Print</button></center>
</body>
</html>
