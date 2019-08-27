<%-- 
    Document   : login
    Created on : Aug 17, 2019, 1:48:39 AM
    Author     : Bidisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            .log:hover{
                color:black;
                background-color: white;
            }
        </style>
    </head>
    <body  style=" margin:0px;padding:0px;width:100% ;height:950px; border:2px solid blue;background-color: whitesmoke ">
        <header>
    <jsp:include page="header.jsp"/>
      </header>
<div style="margin:5px 190px; border:2px solid blue; width:70%; height:520px">
                    <div style= "width:100%;background-image: linear-gradient( to right,skyblue,white);border:2px solid skyblue; height:100px">
                        <p style="font-size:20px;height:80px;margin-top:5px;width:60%;padding:5px;font-family: sans-serif;font-weight: bolder; color:black"> Enhanced Sign-In Security for Your Account.<br/>
                            <span style="font-family:pen Sans,Arial,Verdana,sans-serif;margin-top:3px;font-weight: normal;font-size:15px; color:black"> This is a simple way to verify your identity and to help protect your information from unauthorized users.</span></p>
                        </div>
    <div style="width:100% ;height:400px; background-color:white">
        <div style="height:400px;float:left;width:49%; border-right: 2px solid grey;box-shadow:1px 1px grey ">
        <h1 style="text-align:center; font-size:30px">Login Here!</h1>
        
        <form action="authentication.jsp" method="post">
            <table>
                <tr><td style="font-size:15px; padding:5px;font-family: serif;margin:5px;">Email:</td></tr>
                <tr>  <td ><input style="font-size:15px;font-family: serif;margin:6px;padding:7px; width:150%" type="email" name="email" placeholder="Enter your Email" required="required"/></td></tr>
                <tr><td style="font-size:15px;padding:5px; font-family: serif;">Password:</td></tr>
                  <tr>  <td><input style="font-size:15px;font-family: serif;margin:6px;padding:7px; width:150%" type="password" name="password" placeholder="Enter your Password"required="required"/></td></tr>
                <tr><td colspan="2"><input class="log" style="width:70px;padding:5px ;margin-bottom:15px ;font-family:sans-serif; background-color: darkblue; color: white; font-weight:bolder" type="submit"value="Login"></td></tr>
            </table>
        </form>
        <a style="font-size:20px; margin:6px 6px 6px 6px;padding:5px 5px 5px 5px " href="registrationform.jsp">Create an Account</a></div>

      <div style="width:49%; height:400px; float:right">
          <img src="login9.png" width="80%" height="350px" >
      </div></div>
    <div style="width:100%;height:280px;margin:5px">
   
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>
