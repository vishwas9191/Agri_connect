<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AgriConnect | Register</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

*{

    margin:0;

    padding:0;

    box-sizing:border-box;

    font-family:'Poppins',sans-serif;

}

body{

    background:#EEF8EC;

    min-height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

    padding:30px;

}

/*=========================
        MAIN CONTAINER
=========================*/

.container{

    width:1500px;

    height:900px;

    background:white;

    border-radius:30px;

    overflow:hidden;

    display:flex;

    box-shadow:0 20px 45px rgba(0,0,0,.15);

}

/*=========================
        LEFT PANEL
=========================*/

.left{

    width:45%;

    padding:40px;

    display:flex;

    flex-direction:column;

    justify-content:center;

}

/*=========================
        RIGHT PANEL
=========================*/

.right{

    width:55%;

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

/*=========================
        LOGO
=========================*/

.logo{

    width:90px;

    margin:0 auto 10px;

    display:block;

}

/*=========================
        HEADING
=========================*/

.title{

    text-align:center;

    margin-bottom:30px;

}

.title h1{

    color:#2E7D32;

    font-size:46px;

    font-weight:700;

}

.title p{

    color:#666;

    font-size:18px;

    margin-top:8px;

}

/*=========================
        FORM
=========================*/

.form-box{

    background:white;

    border-radius:20px;

    padding:30px;

    box-shadow:0 10px 30px rgba(0,0,0,.08);

}

form{

    display:grid;

    grid-template-columns:1fr 1fr;

    gap:18px;

}

/*=========================
        INPUT BOX
=========================*/

.input-box{

    position:relative;

}

.input-box label{

    display:block;

    margin-bottom:8px;

    font-size:15px;

    font-weight:600;

    color:#222;

}

.input-box i{

    position:absolute;

    left:16px;

    top:47px;

    color:#2E7D32;

    font-size:18px;

}

.input-box input,
.input-box select{

    width:100%;

    height:56px;

    border:1px solid #C8E6C9;

    border-radius:12px;

    padding-left:48px;

    font-size:15px;

    outline:none;

    transition:.3s;

}

.input-box input:focus,
.input-box select:focus{

    border:2px solid #2E7D32;

    box-shadow:0 0 8px rgba(46,125,50,.2);

}

/*=========================
        FULL WIDTH
=========================*/

.full{

    grid-column:1/3;

}




/*=========================
        BUTTON
=========================*/

button{

    width:100%;

    height:60px;

    border:none;

    border-radius:14px;

    background:#2E7D32;

    color:white;

    font-size:20px;

    font-weight:600;

    cursor:pointer;

    transition:.35s;

}

button:hover{

    background:#1B5E20;

    transform:translateY(-2px);

    box-shadow:0 15px 30px rgba(46,125,50,.30);

}

/*=========================
        LOGIN LINK
=========================*/

.register{

    margin-top:25px;

    text-align:center;

    font-size:17px;

    color:#555;

}

.register a{

    text-decoration:none;

    color:#2E7D32;

    font-weight:700;

}

.register a:hover{

    text-decoration:underline;

}

/*=========================
        SECURITY
=========================*/

.security{

    margin-top:30px;

    padding:18px;

    border:1px solid #D6F5D4;

    border-radius:14px;

    text-align:center;

    color:#2E7D32;

    font-size:16px;

    background:#F8FFF7;

}

.security i{

    margin-right:8px;

}

/*=========================
        TOAST
=========================*/

.toast{

    position:fixed;

    top:30px;

    left:50%;

    transform:translate(-50%,-40px);

    min-width:420px;

    max-width:600px;

    padding:18px 28px;

    border-radius:15px;

    display:flex;

    justify-content:center;

    align-items:center;

    gap:12px;

    font-size:18px;

    font-weight:600;

    background:#2E7D32;

    color:white;

    box-shadow:0 15px 35px rgba(0,0,0,.18);

    opacity:0;

    transition:.45s;

    z-index:9999;

}

.toast.show{

    opacity:1;

    transform:translate(-50%,0);

}

.toast i{

    font-size:22px;

}
</style>

</head>

<body>

<%
String success=(String)request.getAttribute("success");
if(success!=null){
%>

<div id="toast" class="toast success">

    <i class="fa-solid fa-circle-check"></i>

    <%=success%>

</div>

<%
}
%>

<div class="container">

<!--==========================
        LEFT PANEL
===========================-->

<div class="left">

<img src="images/logo.png" class="logo">

<div class="title">

<h1>Create Your Account 🌿</h1>

<p>

Join the AgriConnect community today!

</p>

</div>

<div class="form-box">

<form action="register" method="post">

<!-- Full Name -->

<div class="input-box">

<label>Full Name</label>

<i class="fa-solid fa-user"></i>

<input
type="text"
name="name"
placeholder="Enter your full name"
required>

</div>

<!-- Email -->

<div class="input-box">

<label>Email</label>

<i class="fa-solid fa-envelope"></i>

<input
type="email"
name="email"
placeholder="Enter your email"
required>

</div>

<!-- Phone -->

<div class="input-box">

<label>Phone Number</label>

<i class="fa-solid fa-phone"></i>

<input
type="text"
name="phone"
placeholder="Enter your phone number"
required>

</div>

<!-- Password -->

<div class="input-box">

<label>Password</label>

<i class="fa-solid fa-lock"></i>

<input
type="password"
name="password"
placeholder="Enter your password"
required>

</div>

<!-- Village -->

<div class="input-box">

<label>Village</label>

<i class="fa-solid fa-location-dot"></i>

<input
type="text"
name="village"
placeholder="Enter your village"
required>

</div>

<!-- District -->

<div class="input-box">

<label>District</label>

<i class="fa-solid fa-building"></i>

<input
type="text"
name="district"
placeholder="Enter your district"
required>

</div>

<!-- State -->

<div class="input-box">

<label>State</label>

<i class="fa-solid fa-map-location-dot"></i>

<input
type="text"
name="state"
placeholder="Enter your state"
required>

</div>

<!-- Role -->

<div class="input-box">

<label>Role</label>

<i class="fa-solid fa-users"></i>

<select name="role" required>

<option value="">

-- Select Role --

</option>

<option value="Farmer">

Farmer

</option>

<option value="Buyer">

Buyer

</option>

</select>

</div>

<!-- Button -->

<div class="full">

<button type="submit">

<i class="fa-solid fa-user-plus"></i>

&nbsp;

Create Account

</button>

</div>

</form>

<div class="register">

Already have an account?

<a href="Login.jsp">

Login

</a>

</div>

<div class="security">

<i class="fa-solid fa-shield-halved"></i>

Your data is safe with us and will never be shared.

</div>

</div>

</div>

<!--==========================
        RIGHT PANEL
===========================-->

<div class="right">

<img src="images/register.png" alt="Register">

</div>

</div>
<script>

window.onload=function(){

    const toast=document.getElementById("toast");

    if(toast){

        setTimeout(function(){

            toast.classList.add("show");

        },100);

        setTimeout(function(){

            toast.classList.remove("show");

        },3000);

    }

}

</script>

</body>

</html>

