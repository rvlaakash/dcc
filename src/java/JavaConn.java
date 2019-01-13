


import java.sql.*;
import javax.swing.*;
public class JavaConn {
static Connection conn;


public static Connection connecrDb()
{
	String url="jdbc:mysql://localhost:3306/spce";
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url,"root","");
		
		return conn;
	}
	catch( ClassNotFoundException e)
	{
		JOptionPane.showMessageDialog(null, e);
              
	} catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
           
    }
    return null;
	
}
}
