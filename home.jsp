<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABAP Insurance</title>
<style >
   .myslides{
                display:none;
                width:100%;
   }
</style>
</head>
<body style="margin:0px;padding:0px; width:100%; height:900px">
<header>
    <jsp:include page="header.jsp"/>
</header>
 <div style="width:100%;border:2px solid black; height:600px">
            <img class="myslides" src="home7.jpg" widht="99%"px height="600"/>
            <img class="myslides" src="home3.jpg" widht="99%"px height="600" />
            <img class="myslides" src="home5.jpg" widht="99%"px height="600" />
            <img class="myslides" src="home6.jpg" widht="99%"px height="600"/>
        </div>
<div style="width:100%;height:250px">
                <jsp:include page="footer.jsp"/>
</div>    

        <script>
            var myIndex = 0;
            carousel();
            function carousel(){
                var i;
                var x= document.getElementsByClassName("myslides");
                for(i=0; i<x.length; i++){
                    x[i].style.display="none";
                }
                myIndex++;
                if(myIndex > x.length) {myIndex = 1}
                x[myIndex-1].style.display = "block";
                setTimeout(carousel,4000);
                }
            </script>
          
</body></html>