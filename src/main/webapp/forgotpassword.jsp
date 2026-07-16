<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AgriConnect | Forgot Password</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body{

    background:#EEF8EC;

    display:flex;

    justify-content:center;

    align-items:center;

    min-height:100vh;

    padding:30px;

    overflow-y:auto;

}

.container {
	 width:1400px;

    min-height:780px;

    height:auto;
	background: white;
	border-radius: 30px;
	overflow: hidden;
	display: flex;
	box-shadow: 0 20px 45px rgba(0, 0, 0, .15);
}

.left {
	width: 42%;
	padding: 60px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.right{

    width:58%;

    background:#F4FBF2;

    display:flex;

    justify-content:center;

    align-items:center;

}

.right img{

    width:100%;

    height:100%;

    object-fit:cover;

}

.logo {
	width: 90px;
	margin-bottom: 20px;
}

.left h1 {
	color: #2E7D32;
	font-size: 44px;
	margin-bottom: 10px;
}

.left p {
	color: #666;
	font-size: 18px;
	line-height: 30px;
	margin-bottom: 35px;
}

.form-box {
	background: white;
	padding: 35px;
	border-radius: 20px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, .08);
}

.input-box {
	position: relative;
	margin-bottom: 22px;
}

.input-box label {
	display: block;
	margin-bottom: 8px;
	font-size: 15px;
	font-weight: 600;
}

.input-box i {
	position: absolute;
	left: 18px;
	top: 46px;
	color: #2E7D32;
}

.input-box input {
	width: 100%;
	height: 58px;
	border: 1px solid #C8E6C9;
	border-radius: 12px;
	padding-left: 50px;
	font-size: 16px;
	outline: none;
	transition: .3s;
}

.input-box input:focus {
	border: 2px solid #2E7D32;
	box-shadow: 0 0 8px rgba(46, 125, 50, .2);
}

/*=========================
        BUTTON
=========================*/
button {
	width: 100%;
	height: 58px;
	border: none;
	border-radius: 12px;
	background: #2E7D32;
	color: white;
	font-size: 18px;
	font-weight: 600;
	cursor: pointer;
	transition: .3s;
}

button:hover {
	background: #1B5E20;
	transform: translateY(-2px);
}

/*=========================
        LOGIN LINK
=========================*/
.back-login {
	margin-top: 25px;
	text-align: center;
	font-size: 16px;
}

.back-login a {
	text-decoration: none;
	color: #2E7D32;
	font-weight: 700;
}

.back-login a:hover {
	text-decoration: underline;
}

/*=========================
        INFO BOX
=========================*/
.info-box {
	margin-top: 25px;
	padding: 18px;
	border-radius: 12px;
	background: #F6FFF6;
	border: 1px solid #C8E6C9;
	color: #2E7D32;
	font-size: 15px;
	display: flex;
	align-items: center;
	gap: 10px;
}

.info-box i {
	font-size: 22px;
}

/*==============================
        TOAST MESSAGE
==============================*/
.toast {
	position: fixed;
	top: 30px;
	left: 50%;
	transform: translate(-50%, -40px);
	min-width: 420px;
	max-width: 600px;
	padding: 18px 30px;
	border-radius: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 12px;
	font-size: 18px;
	font-weight: 600;
	box-shadow: 0 15px 35px rgba(0, 0, 0, .18);
	opacity: 0;
	transition: .45s;
	z-index: 9999;
}

.toast.show {
	opacity: 1;
	transform: translate(-50%, 0);
}

.success {
	background: #2E7D32;
	color: white;
}

.error {
	background: #FFF5F5;
	color: #C62828;
	border: 1px solid #F8CACA;
}
</style>

</head>

<body>

	<%
	String success = (String) request.getAttribute("success");
	String error = (String) request.getAttribute("error");
	%>

	<div class="container">

		<div class="left">

			<img src="images/logo.png" class="logo">

			<h1>Forgot Password 🔑</h1>

			<p>Enter your registered email address and create a new password
				to continue using AgriConnect.</p>

			<div class="form-box">

				<form action="forgotpassword" method="post">
					<!-- Email -->

					<div class="input-box">

						<label>Email Address</label> <i class="fa-solid fa-envelope"></i>

						<input type="email" name="email"
							placeholder="Enter your registered email" required>

					</div>

					<!-- New Password -->

					<div class="input-box">

						<label>New Password</label> <i class="fa-solid fa-lock"></i> <input
							type="password" name="password" placeholder="Enter new password"
							required>

					</div>

					<!-- Confirm Password -->

					<div class="input-box">

						<label>Confirm Password</label> <i class="fa-solid fa-key"></i> <input
							type="password" name="confirm" placeholder="Confirm new password"
							required>

					</div>

					<!-- Button -->

					<button type="submit">

						<i class="fa-solid fa-rotate"></i> &nbsp; Reset Password

					</button>

				</form>

				<div class="back-login">

					Remember your password? <a href="Login.jsp"> Login </a>

				</div>

				<div class="info-box">

					<i class="fa-solid fa-circle-info"></i> Make sure you use the email
					address that you registered with AgriConnect.

				</div>

			</div>

		</div>

		<!-- Right Section -->

		<div class="right">

			<img src="images/forgotpassword.png" alt="Forgot Password">

		</div>

	</div>
	<%
	if (success != null) {
	%>

	<div id="toast" class="toast success">

		<i class="fa-solid fa-circle-check"></i>

		<%=success%>

	</div>

	<%
	} else if (error != null) {
	%>

	<div id="toast" class="toast error">

		<i class="fa-solid fa-circle-xmark"></i>

		<%=error%>

	</div>

	<%
	}
	%>


	<script>
		window.onload = function() {

			const toast = document.getElementById("toast");

			if (toast) {

				setTimeout(function() {

					toast.classList.add("show");

				}, 100);

				setTimeout(function() {

					toast.classList.remove("show");

				}, 3000);

			}

		}
	</script>
</body>

</html>