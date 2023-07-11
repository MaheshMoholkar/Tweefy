<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tweefy | Login</title>
    <link rel="stylesheet" href="./assets/css/style_login.css">
    
</head>
<body>
    <div class="container">
    		<%if(session.getAttribute("login") == null) 
    			{
    		%>
    			<p></p>
    		<%
    			}
    		else if ((Boolean)session.getAttribute("login")==false) {
			%>
				<h5 style="color:red"> Login Failed.</h5>
			<%
				}
    			else if((Boolean)session.getAttribute("login")==true) {
    				
    		%>
    				<h5 style="color:red"> Already Registered.</h5>
    		<%
    			}
			%>
        <div class="box box-one">
            <i class="fab fa-twitter"><img src="https://img.icons8.com/color/50/000000/twitter--v1.png"/></i>
            <a href="register.jsp" style="text-decoration:none;">
            <button>
                <span>Register</span>
            </button></a>
            <div class="login">
            	<button>
                <span >Login</span>
            	</button>
            </div>
        </div>
        <div class="box box-two">
            <form action="login" method="post">
                <input name="username" type="text" placeholder="Username"/>
                <input id="password" name="password" type="password" placeholder="Password"/>
                <button type="submit" class="next-btn">Sign In</button>
            </form>
            <button>Forget password</button>
        </div>
    </div>
</body>
</html>
