<%-- 
    Document   : map
    Created on : Aug 24, 2019, 7:38:21 AM
    Author     : akshitgoel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Map of abap</title>
        <style>
            h1{
                font-family:sans-serif;
                font-size:60px;
                color: navy;
            }
            a{
                color:navy;
                font-size:19px;
                font-weight:bolder;
                font-family: sans-serif;
                text-decoration: underline navy;
            }
            p{
                  color: black;
                padding-left:20px;
                font-size:22px;
                font-family: serif;
             
                font-weight:bolder;
            }
            h3{
                 color: darkblue;
                font-size:28px;
                font-weight:bolder;
                
       
            }
           
            </style>
    </head>
    <body style="margin:0px;padding:0px;border:2px solid orange;background-color:lavender ;width:100%;height:1190px">
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        <div style="width:70%;height:870px;background-image: url(map7.jpg);border:2px solid blue;opacity:0.7; margin-left:210px">
           <h1 style="margin-top:0px">SITE MAP</h1>
           <h3> SHOP FOR INSURANCE</h3>
           <p> Your ABAP agent is your one-stop-shop for your Car ,Bike, Life, Motorcycle,Life,Commerical Insurance.<br/>
               Take advantage of our broad array of insurance coverage discounts. <a style="color:blue" href="motor.jsp">click here</a></p>
        <h3>CLAIM SERVICE</h3>
            <p> Call Claims Services at 1-800-435-7764 to report a new claim or check the status of an existing claim. <a style="color:blue" href="claim.jsp">click here</a></p>
            <h3>  ABAP ACCOUNT</h3>
            <p> Login or register to pay your bill and manage your policy online. <a style="color:blue;" href="login.jsp">click here</a></p>
           <h3>CONTACT US</h3>
           <p>Give us a call, get our address. <a style="color:blue;" href="contactus.jsp">click here</a></p>
           <h3>CUSTOMER CARE</h3>
           <p> To take any help and further query use customer care. <a style="color:blue" href="customercare.jsp">click here</a></p>
           <h3>FREQUENTLY ASKED QUESTION</h3>
           <p> Questions are put here that asked most of the time. <a style="color:blue;" href="faqs.jsp">click here</a></p>
        </div>
        <div style="width:100%;height:250px">
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
