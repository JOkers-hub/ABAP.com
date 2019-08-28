<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{
                font-family:sans-serif;
                font-size:40px;
                color: navy;
            }
            #main{
                  color:black;
               
                font-size:20px;
                font-family:helvttica,arial,sans-serif;   
            }
            p{
                  color:gray;
                padding-left:20px;
                font-size:20px;
                font-family: serif;
             
                font-weight:lighter;
            }
            h2{
                color: dimgrey;
                font-size:30px;
                font-family:sans-serif; 
            }
            h3{
                color: indigo;
                font-size:27px;
                font-weight:bolder;
            }
            h5{
                font-size:10px;
            }
            
        </style>
    </head>
    <body  style=" margin:0px;background-color: lavender;opacity:0.8;padding:0px;width:100% ;height:3300px">
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        <div  style="margin-left: 210px ; width:70%; height:3000px"> 
            <div  style=" width:100%; height:200px">
                <h1> Frequently Asked Questions</h1>
                     <p id="main">Pick a topic to help find answers to your insurance questions, or check out our top 9 most asked questions below.
                     </p>
                 <h2>Insurance Related FAQ :-</h2>
            </div>   
            <div  style="width:100%;border:2px solid black;background-color:white;box-shadow:1px 1px 1px 1px grey; height:2765px">
                <div style="border-bottom:2px solid grey; width:100%; height:300px">
                <h3>1.I forgot my username and password. How do I log in?</h3>
            <p>Trying to log into your account, but can’t remember your username and password?
              Don’t worry; we can help recover your information.
              Go to the My ABAP account recovery page.<br/>
              1. Enter your policy number, last name, and date of birth.<br/>
              2. Answer a security question (to protect your account)<br/>
              3. Get your account information!<br/>
              4.If you need help, or can’t remember your policy number, contact your ABAP agent or ABAP Customer Service:<br/>
              1800045678<br/>
               Mon-Fri 7:00 am to 11:00 pm Central Time<br/>
              Sat-Sun 8:00 am to 8:00 pm Central Time
                  </p></div>
             <div style="border-bottom:2px solid grey; width:100%; height:260px">              
                <h3>2 .My bill is due, but I can't login to My ABAP. What should I do?</h3>
                 <p>If you need help paying your bill online, please contact your ABAP agent, or call Customer Service:<br/>

                  1-888-327-6335<br/>
                  Mon-Fri 7:00 am to 11:00 pm Central Time<br/>
                  Sat-Sun 8:00 am to 8:00 pm Central Time<br/>
                 </p></div>
             <div style=" border-bottom:2px solid grey;width:100%; height:280px">
                 <h3>3 .What are insurance risk indicators? How does my risk affect the price of my coverage?</h3>
                 <p> ABAP understands how important it is to deliver quality coverage at affordable rates. We understand that as a dedicated driver, homeowner, parent, child, or worker, you want, and rightly deserve, the most dependable coverage for your hard earned money, and with safe habits, should come lower insurance costs.<br/>
                 <br/>That's why, at ABAP, we are always looking for new ways to keep the cost of insurance affordable. To do this, we use a tool called the Risk Assessment Indicator.<br/>
                 </p></div>
             <div style="border-bottom:2px solid grey;width:100%; height:260px">
                 <h3> 4.Who should I call to report a loss?</h3>
                 <p> After a car accident, home damage, or any kind of loss, it’s important to let your ABAP agent know.<br/> To get the claims process moving immediately though, call ABAP Claim Services :<br/> 91-180056741.(English, Spanish and hearing-impaired available).

                 </p></div>
             <div  style="border-bottom:2px solid grey; width:100%; height:250px">
                 <h3> 5.How do I print my car insurance ID card?</h3>
                 <p>Print your car insurance ID card or evidence of insurance through your ABAP.com account.<br/> Log in, click on your car insurance policy, and choose the link to print your evidence of insurance.
                     <br/><br/>If you don’t have a My ABAP account, you can register today.
                 </p></div>
             <div style=" border-bottom:2px solid grey;width:100%; height:380px">
                 <h3>6.What kinds of car insurance discounts are available?</h3>
                 <p>ABAP offers a variety of discounts to help you save on your insurance, and reward you for safe behavior.<BR/> Discounts vary by state, so make sure to check for which discounts you’re eligible.<br/>
                 Generally, ABAP helps you save with discounts for:<br/><br/>
                * Homeowners<br/>
                * Teens with parents who have safe driving records<br/>
                * Drivers who own cars with standard safety features<br/>
                * Drivers who own multiple cars<br/>
                And more!<br/><br/>
                 Contact your local ABAP agent for more details.<BR/>
             </p></div>
             <div style="border-bottom:2px solid grey; width:100%; height:250px">
                 <h3>7.Am I covered if I rent a car?</h3>
                 <p>Car rental companies charge daily fees for their own insurance to damages in your rental agreement.<br/>
                     However, it is possible that your current auto policy provides rental car coverage. This typically varies by state though, so check your policy or contact your local ABAP agent for more details.
                 </p></div>
                 <div style="border-bottom:2px solid grey; width:100%; height:250px">
                 <h3>8.What does "full coverage" mean?</h3>
                 <p>This is an often misinterpreted term, and doesn't refer to a policy that covers "everything".<br/> Instead, full coverage typically refers to a policy that includes both liability coverage and coverage for damage to your property.<br/>
                 Your car insurance Policy Declaration page lists the coverage you have selected, and a ABAP agent can help you select Auto insurance coverage that fits your needs and budget.
                 </p></div>
             <div style=" width:100%; height:310px">
                 <h3>9.What is a Good Student Discount?</h3>
                 <p>The good student discount is an bike insurance discount available in most states that rewards young drivers for doing well in school.<br/>
                 To qualify, the driver must be between 16 and 24 years old, a full-time student enrolled in high school or college, and must provide documentation that any of the following apply:<br/><br/>
                 *Ranked scholastically in the upper 20% of his or her class.<br/>
                 *Had a "B"grade average or better.<br/>
                * Had an average of at least a 3.0 for all subjects combined.<br/>
                * Was included in the "Dean's List", "Honor Roll" or similar list.<br/>
                 </p></div>
             </div>
            </div>
              <div style="width:100%;height:250px;clear:both;margin:5px;">
   
        <jsp:include page="footer.jsp"/>
    </div>
         </body>
 </html>