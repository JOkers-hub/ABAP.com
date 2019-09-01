<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Policy</title>
        <style>
            .policy{
                  font-family:sans-serif;
                font-size:30px;
                color: navy;
                margin-bottom:3px;
                padding-left:70px;
                margin-top: 30px;
          
            }
            .policytable{
                padding:5px;
             
  
            }
            .sub hover{
                color:blue;
            }
            </style>
            
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        <%
            
            if(session.getAttribute("savepol")!=null){
                out.print((String)session.getAttribute("savepol"));
                session.removeAttribute("savepol");
                
            }
        %>
        <div style="margin-left: 210px ; width:70%; height:550px;background-image: linear-gradient(to top,grey,skyblue);opacity:0.8;">
            <div style="float:left;margin-top:40px;width:50%;border-right:2px solid grey; height:450px">
                <img style="margin-left:70px;margin-top:40px;"src="pic2.jpg" width="300px" height="350px">
            </div>
            <div style="float:right;width:49%;margin-top:30px;height:450px">
        <h1 class="policy">Add Policy</h1>
        
        <form action="savepol.jsp" method="post">
            <table style=" margin-left:50px;font-size:20px;">
                
                <tr>
                    <td  class="policytable">category </td>
                    <td><select  style="padding:5px 5px;margin-right:5px;width:210px;" name="catagory">
                            <option>---Select category---</option>
                            <%
    try
    {
        Connection con = com.abap.register.MyCon.getcon();
      
        PreparedStatement st = con.prepareStatement("select * from policycatagory");
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("catagory")%>"> <%=rs.getString("catagory")%></option>
        
               
                
                           <%
        }
        
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>
                            
                        </select></td>
                </tr>
                <tr>
                    <td class="policytable">Policy No:</td>
                    <td ><input style="padding:5px 5px;margin-right:5px;width:200px;" type="number" name="policyNO" required="required"></td>
                </tr>
                
                <tr>
                    <td class="policytable">Policy Name:</td>
                    <td><input  style="padding:5px 5px;margin-right:5px;width:200px;" type="text" name="policyName" required="required"></td>
                </tr>
                
                <tr>
                    <td class="policytable">Period</td>
                    <td><input  style="padding:5px 5px;margin-right:5px;width:200px;" type="number" name="period" required="required"></td>
                </tr>
                
                <tr>
                    <td  class="policytable" >Premium:</td>
                    <td><input  style="padding:5px 5px;margin-right:5px;width:200px;" type="number" name="premium" required="required"></td>
                </tr>
                
                <tr>
                    <td  class="policytable">Amount:</td>
                    <td><input  style="padding:5px 5px;margin-right:5px;width:200px;" type="number" name="amount" required="required"></td>
                </tr>
                
                <tr>
                    <td><input class="sub"  style="padding:5px 5px;margin-right:5px;width:70px;" type="submit" name="Add"></td>
                </tr>
                
            </table>
        </form>
            </div>
        </div>
    </body>
    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>
</html>
