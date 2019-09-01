<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style>
             h1{
                font-family:sans-serif;
                font-size:60px;
                color: navy;
                margin-bottom:3px;
                padding-left:5px;
            }
            .vo{
                   
                  width:100%;
              margin-top:5px;
                  font-size:22px;
                  color: black;
         
                font-family: serif;
                font-weight:normal;
                padding-left:40px;
               box-sizing:border-box;
            }
            h3{
                     width:100%;
                font-size:40px;
                font-weight:bolder;
                 color: navy;
             padding-left:20px;
              box-sizing:border-box;
             margin-top:15px;
             margin-bottom:5px;
          font-style: italic;
            }
            .ho{
                     color: grey;
                padding-left:40px;
                font-size:25px;
                font-family: serif;
             
                font-weight:bolder;
            }
            .voh{
                   color: #white;
                padding-left:40px;
                font-size:25px;
                font-family: serif;
             border:2px solid blue;
                font-weight:bolder;
                margin-top:3px;
                border-radius:45px;
                box-sizing: border-box;
                background-image: linear-gradient(to left,white,grey);
            }
            .bo{
                
               width:100%;
             font-weight:bolder;
             font-family: sans-serif;
                 color: navy;
             padding-left:20px;
              box-sizing:border-box;
             margin-bottom:5px;
      background-color: lavender;
          font-size:50px;
          margin-top:22px;
            }
            </style>
            
    </head>
    <body  style=" margin:0px;padding:0px;width:100% ;height:1490px; background-color: lavender">
        
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        
        <div style="width:70%;height:965px;background-color:white;opacity:0.7; margin-left:210px">
         
            <div style="width:100%;background-color:lavender; height:150px">
                <h1 style="margin-top:0px">Contact Us</h1>
                <p class="vo">Do you need help or have a question? Let us know! ABAP is privileged to serve you. Here are some ways you can get in touch with us.
                </p>
            </div>
             <div style="width:100%;height:810px;border-radius:5px;border:2px solid black">
            <div  style="width:100%; height:240px">
                <div  style="width:30%;padding-left:30px;padding-top:20px; float:left;box-sizing: border-box; height:240px">
                    <img src="contact1.jpg" width="80%" height="150px"/>
                </div>
                <div  style="width:70%;float:right;box-sizing:border-box; height:240px">
                    <h3><u> Customer Service</u></h3>
                    <p class="ho"> Send us a message online through Whatsapp <br/>
                      Call on 1800345628.  
                    Mon-Fri: 7:00am to 11:00 pm.<br/>
                  Sat-Sun: 10:00am to 8:00 pm.
                    </p>
                </div>
            </div >
            
  <div  style="width:100%; height:270px">
               <div style="width:30%;padding-left:30px;padding-top:20px; float:left;box-sizing: border-box; height:270px">
                    <img src="contact2.png"width="80%" height="150px" />
                </div>
                <div  style="width:70%;float:right;box-sizing: border-box; height:270px">
                    <h3><u> Payment Center</u></h3>
          <p class="ho"> Make a payment online
           Personal bill payments:<br/>
            1800675439<br/>
           Available 24 hours a day<br/>
            7 days a week
                    </p> </div>
  </div>
 <div  style="width:100%; height:290px">
               <div style="width:30%;padding-left:30px;padding-top:20px; float:left;box-sizing: border-box; height:290px">
                    <img src="contact3.png"width="80%" height="150px" />
                </div>
                <div  style="width:70%;float:right;box-sizing: border-box; height:290px">
                    <h3><u>Claim Services</u></h3>
                   <p class="ho">  Learn more about Claims Services<br/>
                   Give us a call<br/>
                   1800456378<br/>
                  Available 24 hours a day<br/>
                 7 days a week
                 </p></div>
                 </div>
             </div></div>
            <div style="margin-left:210px;opacity:0.8; width:70%;">
                 <h3 class="bo"> Need help?</h3>
                 <p class="voh">
                  Visit our support center<br/>
                   Pick a topic to get quick answers to some of your common questions.<br/>
                   Visit our FAQ page . <a style="color:blue;text-decoration:blue solid underline" href="faqs.jsp">click here</a><br/>
                  </p>
            </div>
    
       
        
    <div  style="width:100%;height:250px">
        <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>