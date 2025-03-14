<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/xample2.css">
</head>
<body>

 <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <div class="container" id="container">
        <div class="form-container">
            <h2>Create Account</h2>
            <!-- <label for="new-username">Username</label>
            <input type="text" id="new-username" name="username">
            <label for="new-email">Email</label>
            <input type="email" id="new-email" name="email">
            <label for="new-password">Password</label>
            <input type="password" id="new-password" name="password"> -->
            <a href="register.jsp">
            <button style="width:200px;margin-left: 70px;margin-top:70px;">Register</button></a>
            <div class="login-link" id="to-login" style="margin-top:20px;">Already have an account? Log in</div>
        </div>
        <div class="form-container">
            <h2>Login</h2>
             <form method="post" action="home2" class="form" id="form">
            <label for="login-email">Email</label>
            <input type="text" id="login-email" name="email">
            <label for="login-password">Password</label>
            <input type="password" id="login-password" name="password">
            <button type="submit" class="log-in" value="Login">Login</button>
            <div class="login-link" id="to-register">Create an account</div>
            <a href="forgot.jsp" style="text-decoration: none;">
            <div class="forget password" style="margin-left: 105px;margin-top: 10px;color: #0c0b0c;
            font-weight: bold;cursor: pointer;">Forget Password</div>
            </a>
            </form>
        </div>
        
        <div class="image-container">
            <img src="images/log in pic.jpeg" alt="Colorful abstract painting">
        </div>
    </div>
    <!-- JS -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","failed");
	}
	else if(status == "invalidEmail"){
		swal("Sorry", "Please Enter Username","error");
	}
	else if(status == "invalidEmail"){
		swal("Sorry", "Please Enter Password","error");
	}
	else if(status == "resetSuccess"){
		swal("Congrats", "Please Enter Username","success");
	}
	else if(status == "resetFailed"){
		swal("Sorry", "Password Reset Failed","error");
	}
	</script>
   <script src="js/xample2.js"></script>
   
</body>
</html>