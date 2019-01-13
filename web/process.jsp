<%-- 
    Document   : process
    Created on : Aug 11, 2018, 9:53:54 AM
    Author     : Akash Raval < rvlaakash@gmail.com >
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>process</title>
    </head>
    <body>
        
       <%
           
         
              int flag=0;   
    //PrintWriter out=response.getWriter();  
               try {
              String url="jdbc:mysql://localhost:3306/spce";
              Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection(url,"root","");
         String sql ="select PRN from student" ;
		Statement st;
        
            st = conn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                if(rs.getString(1).equals(request.getParameter("PRN1")))
                {
                    flag=1;
                    session.setAttribute("PRN",request.getParameter("PRN1") );
                    session.setMaxInactiveInterval(200);
                   sql = "SELECT `passwords` FROM `passwords` WHERE `PRN`='"+request.getParameter("PRN1")+"'";
                   rs=st.executeQuery(sql);
                    while(rs.next())
                    {
                         if(rs.getString(1).equals(request.getParameter("PASS")))
                        {
                            response.sendRedirect("slickgray/index.jsp");
                        }
                         else
                         {
                             RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
                             rd.include(request, response);  
                             out.print("  <script>alert('Password is Wrong !!');</script>");  

                         }
                    }
                
                }
                
            }
            
            if(flag==1)
            {
                
            }
             else{  
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
      rd.include(request, response);  
       out.print("  <script>alert('PRN or password is Wrong !!');</script>");  

     
  
    } 
        } catch (Exception ex) {
          //  Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
           // out.println( ex);
           // response.sendError(1, "Database Connetion Problem !!");
             RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
      rd.include(request, response);  
       out.print("  <script>alert('Database Is not accessable Try After Some time !! OR Contact Admin');</script>");  

        }
		
    String prn=request.getParameter("PRN1");  
    
   
      
           // chain.doFilter(request, response);
       
           
       
       %>
    </body>
</html>
