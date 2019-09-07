<%@page import="java.sql.*" %>
<%
    if(session.getAttribute("name")==null)
    {
        response.sendRedirect("logout.jsp");
    }
    %>

<html>
<head>
    <link rel="stylesheet" type="text/CSS" href="css/dashboard.css">
    <script src="https://kit.fontawesome.com/96769d176f.js"></script>
<title>Admin page</title>

</head>
<body>
    <header style="width:100%;height:70px;background-image: linear-gradient(to left,skyblue,black);">
       
        <i class="fas fa-bell" style="margin:15px 25px 5px 10px; width:25px;height: 30px;float: right; padding:4px;"></i>
    </header>
    <div class="row">
        <div class="tab">
            
               <table>
                  <tr><td><button  class="tablinks" onclick="openCity(event, 'policy')" id="defaultOpen">policy</button></td></tr>
                  <tr><td><button class="tablinks" onclick="openCity(event, 'add policy')">Add Policy</button></td></tr>
                  <tr><td><button class="tablinks" onclick="openCity(event, 'care register')">Care Register</button></td></tr>
                  <tr><td><button class="tablinks" onclick="openCity(event, 'ticket approval')">Ticket approval</button></td></tr>
                  <tr><td><button class="tablinks" onclick="openCity(event, 'report')">Report</button></td></tr>
                  <tr><td><button class="tablinks" onclick="openCity(event, 'validate customer')">Validate customer</button></td></tr>
                  <tr><td><a href="logout.jsp" ><button id="btn">Logout</button></a></td></tr>
              </table>
        </div>
        
        <div id="policy" class="tabcontent">
         <table>
           <h1>Policy</h1>
              
              <tr>
                  <td>  <img onclick="openCity(event, 'bike')" src="pic/bike1.png"></td>
                  <td> <img  src="pic/car1.jpg"></td>
                  <td> <img  src="pic/home1.jpg"></td>
                  <td> <img  src="pic/life1.jpg"></td>
                 </tr>
                 <tr>
                     <td colspan="2"> <img  src="pic/commercial1.jpg"></td>
                     <td colspan="2"> <img  src="pic/travel1.png"></td>
                 </tr>
  
            </table>
         </div>
        
        
        <div id="add policy" class="tabcontent">
               
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
        Connection con = com.abap.register.MyCon.getCon();
      
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
</div>
    
    <div id="care register" class="tabcontent">
        
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
        
        
    </div>
            
            <div id="bike" class="tabcontent">
                
                <%@page import="java.sql.*" %>
                <%
                try
                  {
                      session.setAttribute("cat", "twowheeler");
                    Connection con = com.abap.register.MyCon.getCon(); 
                    PreparedStatement st = con.prepareStatement("select * from twowheeler "); 
                    ResultSet rs = st.executeQuery();
                    while(rs.next())
                     {
                       %>
                     <h1>Policies!</h1>
                      <table>
                          <tr><th colspan="2">Policy No</th><th colspan="2">Policy Name</th><th colspan="2">Time Priod</th><th colspan="2"> Premium</th><th colspan="2">Amount</th><th colspan="2">Option</th></tr>

                          <tr><td colspan="2"><%=rs.getInt("policyNO")%></td><td colspan="2"><%=rs.getString("policyName")%></td><td colspan="2"><%=rs.getString("period")%> Years </td><td colspan="2"><%=rs.getString("premium")%> /month </td><td colspan="2"> Rs. <%=rs.getString("amount")%></td><td colspan="2"><a href="edit.jsp?id=<%=rs.getInt("policyNO")%>">Edit</a> | <a href="delet.jsp?id=<%=rs.getInt("policyNO")%>">Delete</a></tr>
                         </table>
                          <%
                     }
        
                  }catch(Exception ex)
                    {
                      out.println(ex);
                    }
                  %>
            </div>
            
            
        
    </div>
    
    
    
    
    
    <script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();



</script>
<script>
    <script type="text/javascript">
 function loadDoc() {
  

  setInterval(function(){

   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("noti_number").innerHTML = this.responseText;
    }
   };
   xhttp.open("GET", "data.php", true);
   xhttp.send();

  },1000);


 }
 loadDoc();
</script>

</script>
</body>
</html>
