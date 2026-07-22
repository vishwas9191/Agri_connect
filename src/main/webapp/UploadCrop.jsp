<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AgriConnect | Upload Crop</title>

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

body {
	background: #EEF8EC;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	padding: 30px;
}

/*=========================
        CONTAINER
=========================*/
.container {
	width: 1400px;
	height: 780px;
	background: white;
	border-radius: 30px;
	overflow: hidden;
	display: flex;
	box-shadow: 0 20px 45px rgba(0, 0, 0, .15);
}

/*=========================
        LEFT
=========================*/
.left {
	width: 42%;
	padding: 60px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

/*=========================
        RIGHT
=========================*/
.right {
	width: 58%;
	background: #F4FBF2;
	display: flex;
	justify-content: center;
	align-items: center;
}

.right img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

/*=========================
        LOGO
=========================*/
.logo {
	width: 95px;
	margin-bottom: 20px;
}

/*=========================
        HEADING
=========================*/
.left h1 {
	color: #2E7D32;
	font-size: 45px;
	margin-bottom: 10px;
}

.left p {
	color: #666;
	font-size: 18px;
	line-height: 30px;
	margin-bottom: 35px;
}

/*=========================
        FORM BOX
=========================*/
.form-box {
	background: white;
	padding: 35px;
	border-radius: 20px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, .08);
}

/*=========================
        INPUT BOX
=========================*/
.input-box {
	position: relative;
	margin-bottom: 22px;
}

.input-box label {
	display: block;
	margin-bottom: 8px;
	font-size: 15px;
	font-weight: 600;
	color: #333;
}

.input-box i {
	position: absolute;
	left: 18px;
	top: 46px;
	color: #2E7D32;
	font-size: 18px;
}

.input-box input, .input-box select {
	width: 100%;
	height: 58px;
	padding-left: 50px;
	border: 1px solid #C8E6C9;
	border-radius: 12px;
	font-size: 16px;
	outline: none;
	transition: .3s;
	background: white;
}

.input-box input:focus, .input-box select:focus {
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
    VIEW CROPS
=========================*/
.view-crop {
	margin-top: 22px;
	text-align: center;
	font-size: 16px;
}

.view-crop a {
	text-decoration: none;
	color: #2E7D32;
	font-weight: 700;
}

.view-crop a:hover {
	text-decoration: underline;
}

/*=========================
    INFO BOX
=========================*/
.info-box {
	margin-top: 25px;
	padding: 18px;
	background: #F6FFF6;
	border: 1px solid #C8E6C9;
	border-radius: 12px;
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 15px;
	color: #2E7D32;
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

			<h1>Upload Crop 🌾</h1>

			<p>Fill in your crop details so APMC owners can view and request
				your crops.</p>

			<div class="form-box">

				<form action="UploadCrop" method="post">

					<!-- Crop Name -->

					<div class="input-box">

						<label>Crop Name</label> <i class="fa-solid fa-seedling"></i> <input
							type="text" name="name" placeholder="Enter Crop Name" required>

					</div>

					<!-- Category -->

					<div class="input-box">

						<label>Category</label> <i class="fa-solid fa-layer-group"></i> <select
							name="category" required>

							<option value="">Select Category</option>

							<option value="Vegetable">Vegetable</option>

							<option value="Fruit">Fruit</option>

							<option value="Grain">Grain</option>

							<option value="Pulse">Pulse</option>

							<option value="Spice">Spice</option>

							<option value="Flower">Flower</option>

						</select>

					</div>

					<!-- Season -->

					<div class="input-box">

						<label>Season</label> <i class="fa-solid fa-cloud-sun"></i> <select
							name="season" required>

							<option value="">Select Season</option>

							<option value="Kharif">Kharif</option>

							<option value="Rabi">Rabi</option>

							<option value="Zaid">Zaid</option>

						</select>

					</div>

					<!-- Upload Button -->

					<button type="submit">

						<i class="fa-solid fa-cloud-arrow-up"></i> &nbsp; Upload Crop

					</button>

				</form>

				<div class="view-crop">

					Already uploaded crops? <a href="MyCrops.jsp"> View My Crops </a>

				</div>

				<div class="info-box">

					<i class="fa-solid fa-circle-info"></i> Once uploaded, your crop
					will be visible to APMC owners for purchase requests.

				</div>

			</div>

		</div>

		<!-- Right Section -->

		<div class="right">

			<img src="uploadcrop.png" alt="Upload Crop">

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