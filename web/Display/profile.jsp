<%@page import="java.text.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.JOptionPane"%>
<html>
    <head>
        <link href="pro.css" rel="stylesheet" id="bootstrap-css"/>
          <script src='https://code.responsivevoice.org/responsivevoice.js'> </script>
          <script>
              function voi ()
              {
                var x = document.getElementById("na").textContent;
                        /// alert('name :'+x);
              responsiveVoice.speak('Hello ,'+x+ ',to,Our,,Portaal,,Akash,,,RaWal,,and,,Deep,,Poorohit,Welcomes,You.');
          }
          </script>
        <style>
            img {
  transition: 0.70s;
  -webkit-transition: 0.70s;
  -moz-transition: 0.70s;
  -ms-transition: 0.70s;
  -o-transition: 0.70s;
  width: 250px;
  height: 150px;
  display: block;
  margin-right: auto;
  margin-left: auto;
}

img:hover {
  transition: 0.70s;
  -webkit-transition: 0.70s;
  -moz-transition: 0.70s;
  -ms-transition: 0.70s;
  -o-transition: 0.70s;
  -webkit-transform: rotate(360deg);
  -moz-transform: rotate(360deg);
  -o-transform: rotate(360deg);
  -ms-transform: rotate(360deg);
  transform: rotate(360deg);
} 
            </style>
    </head>
<body >
    
     <%
    
        String PRN=(String)session.getAttribute("PRN");
     String name1 ="",Dept1="",name2="";
     int sem1 = 0,sum=0;
     
     int  dd=0,mm=0,yy=0;
     
    
    %>
      <%
        
          
	String url="jdbc:mysql://127.0.0.1:3306/spce";
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url,"root","");
                String sql ="select FNAME,MNAME,LNAME,DEPT,SEM,DATE,MONTH,YEAR from student where PRN='"+PRN+"';" ;
		Statement st= conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		name1=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3);
                name2=rs.getString(1)+"   "+rs.getString(3);
		Dept1=rs.getString(4);
		sem1=rs.getInt(5);
                dd=rs.getInt(6);
                mm=rs.getInt(7);
                yy=rs.getInt(8);    
		conn.close();
	}
	catch(Exception e)
	{
		//JOptionPane.showMessageDialog(null, e);
            out.print("  <script>alert('You have Login Again !!');</script>");  
            response.sendRedirect("../pages/Display.jsp");
	}
	
    response.setIntHeader("refresh", 60);
    
 %>
 <text id="na" hidden="hidden"><%=name2%></text>
 
    
 <div class="container" style="margin-top: 30px">
    <center>
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
         
       <br>
       <%
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	String st=new java.util.Date().toString();
	
       %>
       <p class=" text-info"><%= st %> </p>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h1 class="panel-title">Profile</h1>
            </div>
            <div class="panel-body">
              <div class="row">
                  <div class="col-md-3 col-lg-3 " align="center" onmouseover="voi()"> <img alt="User Pic" src="../image/user.png" class="img-circle img-responsive" > </div>
                
              
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                        <tr>
                        <td>Name:</td>
                        <td><%=name1%></td>
                      </tr>
                        
                      <tr>
                        <td>Department:</td>
                        <td><%=Dept1%></td>
                      </tr>
                      <tr>
                        <td>PRN No:</td>
                        <td><%=PRN%></td>
                      </tr>
                      <tr>
                        <td>Date of Birth:</td>
                        <% if( dd!=0 ){%>
                        <td><%=dd%>/<%=mm%>/<%=yy%></td>
                        <%}
                        else{
                           %>
                           <td style="color: red">BIRTH DATE IS NOT ADDED</td>
                        <% 
                        }
                        %>
                      </tr>
                   
                         <tr>
                             
                       
                      <tr>
                        <td>Sem:</td>
                        <td><%=sem1%>th</td>
                      </tr>
                 
                      
                    </tbody>
                  </table>
                  
             
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                            <a href="../pages/examtita.jsp" class="btn btn-primary">My Attendence</a>
                  <a href="#" class="btn btn-primary">Update Profile Image</a>
                    </div>
            
          </div>
        </div>
      </div>
    </center>
    </div>
    </body>
    </html>