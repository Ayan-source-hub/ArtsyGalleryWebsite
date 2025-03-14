<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="css/register.css" />
  </head>
  <body>
  
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  
    <section class="container">
      <header>Registration Form</header>
      <form method="post" action="registerservlet" class="form" id="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" name="name" id="name" placeholder="Enter full name" required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="text" name="email" id="email" placeholder="Enter email address" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="number" name="contact" id="contact" placeholder="Enter phone number" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="date" id="date" placeholder="Enter birth date" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender" checked />
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender" />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender" />
              <label for="check-other">prefer not to say</label>
            </div>
          </div>
        </div>
        <div class="input-box address">
          <label>Password</label>
          <input type="password" name="password" id="password" placeholder="Password" required />
          <input type="password" name="password" id="password" placeholder="confirm password" required />
          <div class="column">
            <div class="select-box" style="margin-left:-10px;background: rgba(255, 255, 255, 0.2);
  border-radius: 5px;">
              <select>
                <option hidden>Country</option>
                <option>America</option>
                <option>Japan</option>
                <option>India</option>
                <option>Nepal</option>
              </select>
            </div>
            <input type="text" name="place" id="place" placeholder="Enter your city" required />
          </div>
          <div class="column">
            <input type="text" name="region" id="region" placeholder="Enter your religion" required />
            <input type="number" name="postalcode" id="postalcode" placeholder="Enter postal code" required />
          </div>
        </div>
        <button>Submit</button>
      </form>
    </section>
    
    <!-- JS -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	</script>
  </body>
</html>