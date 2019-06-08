package lnlinelibrary2.onlinelibrary2;
import java.sql.*;
public class GetCon {
private GetCon(){}

public static Connection con;
static{
	try {
		Class.forName(DBIntializer.DRIVER);
		con=DriverManager.getConnection(DBIntializer.CON_STRING,DBIntializer.USERNAME,DBIntializer.PASSWORD);
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}



public static int getPrimaryKey1(){
	int nextvalue=0;
	Connection con=GetCon.getCon();
	PreparedStatement ps2;
	try {
	
	ps2=con.prepareStatement("select *from NEWMEMBER");
	
	ResultSet rs=ps2.executeQuery();
	while(rs.next());
	{
	nextvalue=rs.getInt(1);
	}

	
	
} catch (SQLException e) {
		
		e.printStackTrace();
	}
return nextvalue;

}


public static int getPrimaryKey2(){
	int nextvalue=0;
	Connection con=GetCon.getCon();
	PreparedStatement ps2;
	try {
	
	ps2=con.prepareStatement("select *from NEWSTAFFMEMBER");
	
	ResultSet rs=ps2.executeQuery();
	while(rs.next());
	{
	nextvalue=rs.getInt(1);
	}
	
	
} catch (SQLException e) {
		
		e.printStackTrace();
	}
return nextvalue;

}
public static int getPrimaryKey3(){
	int nextvalue=0;
	Connection con=GetCon.getCon();
	PreparedStatement ps2;
	try {
	
	ps2=con.prepareStatement("select *from BOOKDETAILS");
	
	ResultSet rs=ps2.executeQuery();
	
	while(rs.next());
	{
	nextvalue=rs.getInt(1);
	}
	
	
} catch (SQLException e) {
		
		e.printStackTrace();
	}
return nextvalue;

}
}



