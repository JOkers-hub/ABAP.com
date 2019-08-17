<%@page import="java.sql.*" %>
<%
    try
    {
        Connection con = com.abap.register.MyCon.getCon();
      
        PreparedStatement st = con.prepareStatement("select * from lifeinsurance ");
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            %>
   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Policies</title>
    </head>
    <body>
        <h1>Policies!</h1>
        <table>
            <tr><th>Policy no</th><th>Policy name</th><th>time period</th><th>premium</th><th>amount</th></tr>
            <tr><td><%=rs.getInt("policyNo")%></td><td><%=rs.getString("policyname")%></td><td><%=rs.getString("period")%></td><td><%=rs.getString("premium")%></td><td><%=rs.getString("amount")%></td></tr>
        </table>
        
        
    </body>
</html>
   <%
        }
        
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>