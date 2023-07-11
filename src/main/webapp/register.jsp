<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!String id; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tweefy | Register</title>
    <link rel="stylesheet" href="./assets/css/style_register.css">
</head>
<body>
    <div class="container">
        <div class="box box-two">
        	<%	if(session.getAttribute("register")==null)
    			{
    				System.out.println();
    			}
    			else if (((Boolean)session.getAttribute("register")) == true) 
    			{
    		%>
    				<h5 style="color:red"><%=(String)session.getAttribute("id")%> Exists!</h5>
    		<% 
    			}
    		%>
        <i class="fab fa-twitter"><img src="https://img.icons8.com/color/50/000000/twitter--v1.png"/></i>
            <form action="register" method="post">
                <input id="p" name="firstName" type="text" placeholder="First Name" required/>
                <input id="p" name="lastName" type="text" placeholder="Last Name" required/>
                <input id="p" name="mobile" type="text" placeholder="Mobile" required/>
                <input id="p" name="email" type="email" placeholder="Email" required/>
                <input id="p" name="username" type="text" placeholder="Username" required/>
                <input id="p" name="password" type="text" placeholder="Password" required/>
                <button type="submit" class="next-btn">Register</button>
            </form>
        </div>
    </div>
</body>
</html>