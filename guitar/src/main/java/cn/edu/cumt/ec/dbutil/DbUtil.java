package cn.edu.cumt.ec.dbutil;

import java.sql.*;

public class DbUtil{
	static{
		try{
	         Class.forName("org.sqlite.JDBC");       
	         Connection conn = DriverManager.getConnection("jdbc:sqlite://d:/sqlite/guitar.db");
	         
		}catch(Exception e){
			e.printStackTrace ( );
		}
	}
	public static ResultSet executeQuery(String sql) throws SQLException{
		 Connection conn=null;
		 ResultSet rs=null;
		 String g = null;
			 conn=DriverManager.getConnection("jdbc:sqlite://d:/sqlite/guitar.db");
			 Statement stat = conn.createStatement();
			 rs=stat.executeQuery(sql);
			 while(rs.next()){
				 g=rs.getString(1);
				 System.out.println(g);
			 }
			 
		 System.out.println(rs);
		 return rs;
	 }
}


