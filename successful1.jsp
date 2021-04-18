<html>
    <head>
        <title>ACCOUNT CREATED</title>
        <link rel="stylesheet" type="text/css" href="confirm1.css">
    </head>
    <body >
        <div class="container-fluid apple">
    <a href="/"><img class="header_img_logo" itemprop="image" src="logo.gif" alt="logo codesdope" width="100" height="47" style="margin-left:0px;"></a>
    </div>
            
            <center><br>
                   
             </center>
             </div></div><br>

             <%
             out.println("<br><h1><center>REGISTRATION</center></h1><br>");
             out.println("<br>");
             Object name =  request.getAttribute("name");
             out.println("<h1>Hi "+name+" , "+"</h1>");
             Object mail =  request.getAttribute("mail");
             out.println("<h1><b>E - Mail : "+mail+"</b></h1>");
             out.println("<br>");
        
                
             
             %>
             <h1>REGISTRATION COMPLETED.....THANK YOU...</h1>
 
</body>
</html>