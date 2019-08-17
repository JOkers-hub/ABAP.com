<%@page import="java.sql.*"%>
<jsp:useBean id="s1" class="com.abap.register.Registration"/>
<jsp:setProperty name="s1" property="*"/>
<%
  if(s1.registration())
  {
      session.setAttribute("save", "<p style='color:green;font-weight:bold;'>Product has been successfully uploaded.</p>");
  }  
else
  {
        session.setAttribute("save", "<p style='color:red;font-weight:bold;'>Error : "+s1.getError()+"</p>");
  }
  response.sendRedirect("registrationform.jsp");
%>