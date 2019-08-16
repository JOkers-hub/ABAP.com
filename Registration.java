package com.abap.register;
import java.sql.*;
public class Registration {

	private String name,email,password,mobileNo,gender,address,dob,securityquestion,answere,error;
     int customerID;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getSecurityquestion() {
		return securityquestion;
	}
	public void setSecurityquestion(String securityquestion) {
		this.securityquestion = securityquestion;
	}
	public String getAnswere() {
		return answere;
	}
	public void setAnswere(String answere) {
		this.answere = answere;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	
	
	public boolean registration() {
		
		try {
			
			Connection con=com.abap.register.MyCon.getCon();
			PreparedStatement ps=con.prepareStatement("insert into CustomerRecord(name,email,password,mobileNo,gender,address,dob,securityquestion,answere)values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, mobileNo);
			ps.setString(5, gender);
			ps.setString(6,address);
			ps.setString(7, dob);
			ps.setString(8, securityquestion);
			ps.setString(9, answere);
			ps.executeUpdate();
			return true;
		    }catch(Exception e) {
		    	e.printStackTrace();
			error=e.toString();
			return false;
		   } 
	}
}
