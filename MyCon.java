package com.abap.register;
import java.sql.*;
public class MyCon {

	private static Connection con;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:8001/abap","root","");
		}catch(Exception e) {
			System.out.println(e);
		}return con;
	}
}
