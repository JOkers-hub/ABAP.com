<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

          <title>ABAP</title>
          <style>
              h1{ 
                  font-family:sans-serif;
                font-size:40px;
                color: navy;
               
                   margin-top:5px; 
                   margin-bottom:3px;
              }
              #main{
                   width:100%;
                font-size:28px;
                font-weight:bolder;
                 color: blue;
             padding-left:20px;
            
              box-sizing:border-box;
             margin-top:15px;
              }
              .ho{
                  margin-top:5px;
                  width:100%;
                  height:170px;
                  font-size:20px;
                  color: grey;
                
                font-family: serif;
                font-weight:bolder;
                padding-left:40px;
               box-sizing:border-box;
                
              }
             .top{
                 color: indigo;
            margin-top:5px;
                  
                  padding-left:20px;
              }
              #tab{
                  color: grey;
                padding-left:20px;
                font-size:20px;
                font-family: serif;
             padding-left:40px;
                font-weight:lighter;
                 
              }
              img{
                   box-sizing: border-box;
                  padding-left:20px;
                  
               
              }
          </style>
    </head>
    <body style=" margin:0px;padding:0px;width:100% ;height:2000px; border:2px solid black;background-color: lavender">
        
        
        <header>
       <jsp:include page="header.jsp"/>
      </header>
     <div style=";margin:5px 190px; width:70%; height:770px">
         <div style="width:100%;border:purple; height:290px">
      <h1>ABOUT ABAP</h1>
      <h2 id="main"> Innovation is in our name</h2>
      <p class="ho"> The Apna Bharat Apni Policy Group of Insurance Companies has always lived up to its name by being one step ahead of the insurance industry, and finding new and affordable
          insurance solutions. We began in 2019 with the first drive-in claims office, became the first to introduce reduced rates for low-risk drivers, and then changed the insurance shopping experience by offering comparison rates on the Web.
       ABAP continues to find better ways to serve you with our personalized Snapshot program and our Name Your Price car insurance shopping option.
       </p>
     </div>
      <div style="width:100%;height:470px" > 
          <div style="width:50%;box-sizing:border-box;float:left;border-right:2px solid grey;height:470px;">
         <table>
             <tr>
          <h2 class="top">ABAP Overview</h2>
         <p id="tab">Get to know Progressive better. Meet some of the people who make a difference in our company, learn about our core values and history, and see some of the things Progressive has accomplished over the years.
         </p>
         </tr>
         <tr>
         <h2 class="top">Newsroom</h2>
         <p id="tab">
         Are you a member of the media? Our Newsroom contains our press kit, news releases, useful statistics, and videos.
         </p>
       </tr>
       <tr>
         <h2 class="top">TV Commercials</h2>
         <p id="tab">
         Can’t get enough of Flo? Watch our Progressive commercials online any time you want.
         </p>
         </tr>
         </table>
          </div>
        
          <div style="width:50%;box-sizing:border-box;height:470px;float:right;">
              <table>
         <tr>
         <h2 class="top" >Investors</h2>
         <p id="tab">
         Get timely updates through conference calls, webcasts and presentations, and shareholders' reports.
         </p>
              </tr>
              <tr>
          <h2 class="top">Careers</h2>
          <p id="tab">
          Progressive has been rated one of the top places to start a career because we develop and grow business leaders. View and apply for open positions, and join our network so we can let you know when we have new opportunities.
          </p>
       </tr>
           </table> 
          </div>     
     
     </div>
  </div>
     <div style="width:100%;height:403px;">
             <div style=" box-sizing:border-box;width:25%;height:400px;float:left">
                 <div style="width:100%;height:250px;box-sizing: border-box; ">
                 <img src="arpit.JPG" height="245px" width="90%">
                 </div>
                 <div style="width:100%;height:150px;box-sizing: border-box;">
                     <h1 style="font-size:35px;padding-left:30px;padding-top:10px;">CEO OF COMPANY</h1>
                 </div>
              </div >
              <div style="  box-sizing:border-box;width:25%;height:400px;float:left">
                 <div style="width:100%;height:250px;box-sizing: border-box;border:2px; ">
                  <img  src="priya.JPG" height="245px" width="90%">
               </div>
                  <div style="width:100%;height:150px;box-sizing: border-box;">
                      <h1 style="font-size:35px;padding-left:30px; padding-top:10px">CEO OF COMPANY</h1>
                  </div>
                  
              </div>
                <div style=" box-sizing:border-box;width:25%;height:400px;float:left">
             <div style="width:100%;height:250px;box-sizing: border-box; ">
                    <img  src="annu.jpg" height="245px" width="90%">
               </div>
                     <div style="width:100%;height:150px;box-sizing: border-box;">
                      <h1 style="font-size:35px;padding-left:30px; padding-top:10px">CEO OF COMPANY</h1>
                  </div>
                  
                </div>
              <div style="width:25%;height:400px;  box-sizing:border-box;float:left">
                  <div style="width:100%;height:250px;box-sizing: border-box; ">
                  <img  src="bidisha.JPG" height="245px" width="90%">
              </div>
               <div style="width:100%;height:150px;box-sizing: border-box;">
                      <h1 style="font-size:35px;padding-left:30px; padding-top:10px">EMPLOYEE OF COMPANY</h1>
                  </div>
               </div>
     </div>
     <footer>
       <jsp:include page="footer.jsp"/>
     </footer>
    </body>
</html>