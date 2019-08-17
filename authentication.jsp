<%@page import="java.sql.*" %>
<%
    try
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if(email.equals("admin@gmail.com") && password.equals("123@123"))
        {
            session.setAttribute("admin", "Arpit");
            response.sendRedirect("admin.jsp");
        }
        else
        {
           Connection con = com.abap.register.MyCon.getCon();
           email = request.getParameter("email");
           password = request.getParameter("password");
           PreparedStatement st = con.prepareStatement("select * from CustomerRecord where email=? and password=?");
           st.setString(1, email);
           st.setString(2, password);
           st.executeQuery();
           ResultSet rs = st.executeQuery();
           if(rs.next())
            {
              int customerID = rs.getInt("customerID");
              session.setAttribute("customerID",customerID);
              response.sendRedirect("home.jsp");
            }
           else
            {
              session.setAttribute("fail", "<p style='color:red;font-weight:bold;'>Sorry Login has failed.</p>");
              response.sendRedirect("login.jsp");
            } 
        }
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>