<%-- 
    Document   : registrationform
    Created on : Aug 17, 2019, 1:22:20 AM
    Author     : Bidisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration</title>
        <style>
            .hov:hover{
              color:blue;
            }
        </style>
    </head>
    <body style="width:100% ;height:1000px">
        <header>
        <jsp:include page="header.jsp"/>
        </header>

        <%
        if(session.getAttribute("save")!=null)
            {
                out.println((String)session.getAttribute("save"));
                session.removeAttribute("save");
            }
            %>
 
        <form action="register.jsp" method="get">
            
                <div style="margin:5px 90px; width:85%; height:700px">
                    <div style= "width:100%; height:150px">
            <h1 style="color:  #4e44c8; opacity:0.6 ;font-size:40px;margin:4px;margin-left:2px;font-family:pen Sans,Arial,Verdana,sans-serif; "> welcome </h1>
            <p style="border:1px solid black;background-image: linear-gradient(to top,white,skyblue); margin-top:8px; width:100%;height:70px; word-spacing:10px;font-weight:bolder; color: black;font-family:pen Sans,Arial,Verdana,sans-serif; font-size:20px; opacity:0.8; box-shadow: 2px 2px 3px 2px black"> With Abap, you can manage any of the following policies conveniently from your computer. To register, you must be one of the main policyholders. Please Contact our staff for further queries.  </p>
                    </div>
          <div style=" width:100%;height:550px">
                <div style=" height:500px;width:50%;border-right:1px solid grey; float:left">
                 <img style="margin-left:7px" src="register-here.png" width="350px"height="50px"/>
           <table style=" ;border-radius:5px;background-color: highlight;opacity:0.8; width:80%">
                <tr ><td style="font-size:20px;font-family: arial;padding:3px; width:30%"> Name:</td>
                    <td><input style="font-size:large;padding:3px;margin:5px;border:2px solid black;border-radius:5px" type="text" name="name" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px">Email:</td>
                    <td><input  style="font-size:large;padding:3px;margin:5px;border:2px solid black;border-radius:5px" type="email" name="email" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px"> Password:</td>
                    <td><input  style="font-size:large;padding:3px;margin:5px;border:2px solid black;border-radius:5px" type="password" name="password" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px ">MobileNo:</td>
                    <td><input  style="font-size:large;padding:3px;margin:5px;border:2px solid black;border-radius:5px" type="text" name="mobileNo" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px">Gender:</td>
                    <td><input style="font-size:large;padding:7px;margin:5px" type="radio"name="gender" value="male"/>Male
                    <input  style="font-size:large;padding:7px;margin:5px;border:2px solid black;border-radius:5px"  type="radio"name="gender"  value="female"/>Female</td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px">Address:</td>
                    <td><input  style="font-size:large;padding:3px;margin:5px;border:2px solid black;border-radius:5px;"  type="text" name="address" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px">DOB:</td>
                    <td><input  style="font-size:large;padding:3px;margin:3px;border:2px solid black;border-radius:5px;" type="date"data-date=""data-date-format="DD MMMM YYYY" name="dob" required="required"></td></tr>
                
                <tr><td style="font-size:20px;font-family: arial;padding:3px">Security Question:</td>
                    <td><select style="border:2px solid black;padding:3px; border-radius:5px" name="securityquestion">
                             <option>----select question----</option>
                            <option>What is your nick name?</option>
                             <option>What is your pat name?</option>
                              <option>What is your mother name?</option>
                               <option>What is your first phone's brand name?</option>
                        </select>
                    </td></tr>
                
                <tr><td style="font-size:large;font-family: arial;padding:3px">Answer:</td>
                    <td><input style="font-size:large;padding:3px; margin:5px; border:2px solid black;border-radius:5px"  type="text" name="answere" required="required"></td></tr>
                <tr><td colspan="2"><input class="hov" style="font-size:large;padding:3px;margin:5px" type="submit" value="register"></td></tr>
         
            </table>
                 
          
                
        <a style="font-size:25px; color: mediumblue;margin:15px 15px;padding-top:5px"href="login.jsp">Login here</a>
          </div>
        <div style="float:right; width:48%;height:500px">
            <image style="margin-top:150px" src="Registration1.jpg" width="90%" height="256px" />
        </div>
        </form>
        </div>
 </div>
            <div style="width:100%;clear:both; height:250px;">
        <jsp:include page="footer.jsp"/>
            </div>
        </body></html>