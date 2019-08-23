<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <link rel="stylesheet" href="s.css">
    </head>
    
        <header >
            <a href="home.jsp"><img src="logo1.png" width="10%" height="60px"/></a>
<ul>
    <a href="about.jsp"><li>About</li></a>
    <a href="map.jsp"><li>Site Map</li></a>
    <a href="contact.jsp"><li>Contact</li></a>
    <a href="motor.jsp"><li>Motor</li></a>
    <%
        
     if(session.getAttribute("name")!=null)
            { 
                
    %> <a href="profile.jsp?ID=<%%>"><li><%out.println((String)session.getAttribute("name"));%></li></a><%
            }else{
    %>
    <a href="login.jsp"><li>Login</li></a>
    
    <%
        }
    %>
</ul>
</header>

    

