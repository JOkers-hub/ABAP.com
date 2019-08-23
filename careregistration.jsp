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
        <title>CustomerCare Registration</title>
    </head>
    <body>
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
 
        
        <h1>Register here</h1>
        <form action="save.jsp" method="post">
            <table>
                <tr><td>Enter Name:</td>
                    <td><input type="text" name="name" required="required"></td></tr>
                
                <tr><td>Email:</td>
                    <td><input type="email" name="email" required="required"></td></tr>
                
                <tr><td>Enter Password:</td>
                    <td><input type="password" name="password" required="required"></td></tr>
                
                <tr><td>Mobile No:</td>
                    <td><input type="text" name="mobileNo" required="required"></td></tr>
                
                <tr><td>Gender:</td>
                    <td><input type="radio"  name="gender" value="male"/>Male
                    <input type="radio"  name="gender"  value="female"/>Female</td></tr>
                
                <tr><td>Address:</td>
                    <td><input type="text" name="address" required="required"></td></tr>
                
                <tr><td>DOB:</td>
                    <td><input type="date" name="dob" required="required"></td></tr>
                
                <tr><td>Security Question:</td>
                    <td><select name="securityquestion">
                             <option>----select question----</option>
                            <option>What is your nick name?</option>
                             <option>What is your pat name?</option>
                              <option>What is your mother name?</option>
                               <option>What is your first phone's brand name?</option>
                        </select>
                    </td></tr>
                
                <tr><td>Answer:</td>
                    <td><input type="text" name="answere" required="required"></td></tr>
                <tr><td colspan="2"><input type="submit" value="register"></td></tr>
            </table>
       
        </form>
        <a href="login.jsp">Login here</a> 
        
    </body>
</html>
