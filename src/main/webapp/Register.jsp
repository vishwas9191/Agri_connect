<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AgriConnect - Farmer Registration</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	background-image: linear-gradient(rgba(0,0,0,0.15), rgba(0,0,0,0.15)),
		url("https://images.pexels.com/photos/18100007/pexels-photo-18100007/free-photo-of-farmer-with-oxes-on-field.jpeg");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
	
}

.container{
    width:800px;
    background:rgba(255,255,255,0.05);   /* Low opacity */
  background: rgba(255,255,255,0.04);
backdrop-filter: blur(0px);
-webkit-backdrop-filter: blur(0px);

    border-radius:20px;
    padding:35px;

    box-shadow:0 8px 20px rgba(0,0,0,0.3);
}

.logo {
	text-align: center;
	color: white;
	margin-bottom: 20px;
}

.logo h1 {
	font-size: 34px;
}

.logo p {
	margin-top: 5px;
}

.heading {
	text-align: center;
	color: white;
	font-size: 24px;
	margin-bottom: 25px;
}

form {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 20px;
}

.form-group {
	display: flex;
	flex-direction: column;
}

.form-group label {
	color: white;
	margin-bottom: 6px;
	font-weight: bold;
}

.form-group input {
	padding: 12px;
	border: none;
	border-radius: 8px;
	outline: none;
	font-size: 15px;
}

.form-group input:focus {
	border: 2px solid green;
}

.full {
	grid-column: 1/3;
}

button {
	width: 100%;
	padding: 14px;
	border: none;
	border-radius: 8px;
	background: green;
	color: white;
	font-size: 18px;
	cursor: pointer;
	font-weight: bold;
}

button:hover {
	background: darkgreen;
}

.footer {
	text-align: center;
	color: white;
	margin-top: 20px;
}

.footer a {
	color: lightgreen;
	text-decoration: none;
}

.footer a:hover {
	text-decoration: underline;
}

/* Success Message Toast */
.toast {
    position: fixed;
    top: 20px;
    right: 20px;
     background: white;          /* White background */
    color: #28a745; 
    padding: 15px 25px;
    border-radius: 10px;
    font-size: 16px;
    font-weight: bold;
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    opacity: 0;
    transform: translateX(120%);
    transition: all 0.5s ease;
    z-index: 9999;
}

.toast.show {
    opacity: 1;
    transform: translateX(0);
}

</style>

</head>

<body>

	<div class="container">

		<div class="logo">
			<h1>🌱 AgriConnect</h1>
			<p>Connecting Farmers with Buyers</p>
		</div>

		<h2 class="heading">Create Farmer Account</h2>
		
		<%
String success = (String)request.getAttribute("success");
if(success != null){
%>

<div id="toast" class="toast">
    ✅ <%=success%>
</div>

<%
}
%>

		<form action="register" method="post">
			<!-- Full Name -->
			<div class="form-group">
				<label>Full Name</label> <input type="text" name="name"
					placeholder="Enter your full name" required>
			</div>

			<!-- Email -->
			<div class="form-group">
				<label>Email</label> <input type="email" name="email"
					placeholder="Enter your email" required>
			</div>

			<!-- Phone -->
			<div class="form-group">
				<label>Phone Number</label> <input type="text" name="phone"
					placeholder="Enter your phone number" required>
			</div>

			<!-- Password -->
			<div class="form-group">
				<label>Password</label> <input type="password" name="password"
					placeholder="Enter your password" required>
			</div>

			<!-- Confirm Password -->
			

			<!-- Village -->
			<div class="form-group">
				<label>Village</label> <input type="text" name="village"
					placeholder="Enter your village" required>
			</div>

			<!-- District -->
			<div class="form-group">
				<label>District</label> <input type="text" name="district"
					placeholder="Enter your district" required>
			</div>

			<!-- State -->
			<div class="form-group">
				<label>State</label> <input type="text" name="state"
					placeholder="Enter your state" required>
			</div>
			
		<!	--------role->
			<div class="form-group">
				<label>Role</label> <input type="text" name="role"
					placeholder="Enter your Role" required>
			</div>

			<!-- Submit Button -->
			
			
			<div class="full">
				<button type="submit">Create Account</button>
			</div>

		</form>

		<div class="footer">
			<p>
				Already have an account? <a href="Login.jsp">Login</a>
			</p>
		</div>

	</div>
	<script>
window.onload = function () {
    var toast = document.getElementById("toast");

    if (toast) {
        toast.classList.add("show");

        setTimeout(function () {
            toast.classList.remove("show");
        }, 3000);
    }
};
</script>

</body>
</html>