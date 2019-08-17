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
    </head>
    <body>
        <header>
    <jsp:include page="header.jsp"/>
      </header>

        <h1>Login Here!</h1>
        
        <form action="authentication.jsp" method="post">
            <table>
                <tr><td>Email:</td>
                    <td><input type="email" name="email" required="required"/></td></tr>
                <tr><td>Password</td>
                    <td><input type="password" name="password" required="required"/></td></tr>
                <tr><td colspan="2"><input type="submit"value="Login"></td></tr>

            </table>
        </form>
        <a href="registrationform.jsp">Create an Account</a>
    </body>
</html>
