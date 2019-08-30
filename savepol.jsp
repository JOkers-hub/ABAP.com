<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="s" class="com.abap.add.policy"/>
<jsp:setProperty name="s" property="*"/>


<%
    
    
   
 String catagory=request.getParameter("catagory");
    System.out.print("Category"+catagory);
  try{  
      
    
    Connection con=com.abap.register.MyCon.getCon();
    
        PreparedStatement ps=con.prepareStatement("select * from policycatagory where catagory = '"+catagory+"'");
        
        ResultSet rs=ps.executeQuery();
       
        if(rs.next())
        {
           
        int CategoryId=rs.getInt(1);
        session.setAttribute("cate", CategoryId);
        
         if(s.addpolicy(CategoryId)){
        session.setAttribute("savepol","<p style='color:green;font-weight:bold;'>Successfully Added.</p>");
         }else{
        session.setAttribute("savepol","<p style='color:red;font-weight:bold;'>Error:"+s.getError()+"</p>");
         }
          response.sendRedirect("addpolicy.jsp");     
        }
  }catch(Exception e){
      System.out.print(e);
  }
        %>