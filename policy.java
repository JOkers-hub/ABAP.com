/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abap.add;
import java.sql.*;
public class policy {
    private int policyNO,period,premium,amount,catagoryID;
    private String policyName,error,catagory;

    public String getCatagory() {
        return catagory;
    }

    public void setCatagory(String catagory) {
        this.catagory = catagory;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public int getPolicyNO() {
        return policyNO;
    }

    public void setPolicyNO(int policyNO) {
        this.policyNO = policyNO;
    }

    public int getPeriod() {
        return period;
    }

    public void setPeriod(int period) {
        this.period = period;
    }

    public int getPremium() {
        return premium;
    }

    public void setPremium(int premium) {
        this.premium = premium;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getCatagoryID() {
        return catagoryID;
    }

    public void setCatagoryID(int catagoryID) {
        this.catagoryID = catagoryID;
    }

    public String getPolicyName() {
        return policyName;
    }

    public void setPolicyName(String policyName) {
        this.policyName = policyName;
    }
   
   

    
     public boolean addpolicy(int catagoryid){
    try{
        
        Connection con=com.abap.register.MyCon.getCon();
        PreparedStatement ps=con.prepareStatement("insert into "+catagory+"(policyNO,policyName,period,premium,amount,catagoryID)values(?,?,?,?,?,?)");
        ps.setInt(1,policyNO);
        ps.setString(2,policyName);
        ps.setInt(3, period);
        ps.setInt(4,premium);
        ps.setInt(5,amount);
        ps.setInt(6,catagoryid);
        ps.executeUpdate();
        return true;
    }catch(Exception e){
        error=e.toString();
        return false;
    }
}
}
