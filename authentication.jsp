<%@page import="java.sql.*" %>
<%
    try
    {
       Connection con = com.abap.register.MyCon.getCon();
          String email = request.getParameter("email");
           String password = request.getParameter("password");
           PreparedStatement st = con.prepareStatement("select * from admin where email=? and password=?");
           st.setString(1, email);
           st.setString(2, password);
           st.executeQuery();
           ResultSet rs = st.executeQuery();
        if(rs.next()){
            int ID=rs.getInt("adminId");
            String name=rs.getString("name");
            session.setAttribute("name", name);
            
             session.setAttribute("ID",ID);
            response.sendRedirect("admin.jsp?id=ID");
        }
        else
        {
          
           email = request.getParameter("email");
           password = request.getParameter("password");
           st = con.prepareStatement("select * from customerrecord where email=? and password=?");
           st.setString(1, email);
           st.setString(2, password);
           st.executeQuery();
           rs = st.executeQuery();
           if(rs.next())
            {
              int customerID = rs.getInt("customerID");
              String name=rs.getString("name");
              session.setAttribute("ID",customerID);
              session.setAttribute("name",name);
              response.sendRedirect("customerdashboard1.jsp?id=customerID");
            }          
              else{
                 st = con.prepareStatement("select * from customercare where email=? and password=?");
                 st.setString(1, email);
                 st.setString(2, password);
                 st.executeQuery();
                 rs = st.executeQuery();
                 if(rs.next())
                  {
                    int staffID = rs.getInt("staffID");
                    String name=rs.getString("name");
                    session.setAttribute("ID",staffID);
                    session.setAttribute("name",name);
                    response.sendRedirect("staffdashboard.jsp?id=staffID");
                   }
                  else{
                       session.setAttribute("fail", "<p style='color:red;font-weight:bold;'>Sorry Login has failed.</p>");
                       response.sendRedirect("login.jsp");
                     } 
           }}
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>
