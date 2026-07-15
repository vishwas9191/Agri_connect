<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AgriConnect | Login</title>

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

    display:flex;

    justify-content:center;

    align-items:center;

    min-height:100vh;

    padding:30px;

}

.container{

    width:1400px;

    height:780px;

    background:white;

    border-radius:30px;

    overflow:hidden;

    display:flex;

    box-shadow:0 20px 45px rgba(0,0,0,.15);

}

.left{

    width:42%;

    padding:60px;

    display:flex;

    flex-direction:column;

    justify-content:center;

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

.logo{

    width:95px;

    margin-bottom:20px;

}

.left h1{

    color:#2E7D32;

    font-size:48px;

    margin-bottom:8px;

}

.left p{

    color:#666;

    font-size:20px;

    margin-bottom:35px;

}

.login-box{

    background:white;

    padding:35px;

    border-radius:20px;

    box-shadow:0 10px 30px rgba(0,0,0,.08);

}

.login-box h2{

    color:#2E7D32;

    font-size:34px;

    margin-bottom:25px;

}

.input-box{

    position:relative;

    margin-bottom:20px;

}

.input-box i{

    position:absolute;

    top:50%;

    left:18px;

    transform:translateY(-50%);

    color:#2E7D32;

    font-size:18px;

}

.input-box input{

    width:100%;

    height:58px;

    border:1px solid #C8E6C9;

    border-radius:12px;

    padding-left:50px;

    font-size:16px;

    outline:none;

    transition:.3s;

}

.input-box input:focus{

    border:2px solid #2E7D32;

    box-shadow:0 0 8px rgba(46,125,50,.2);

}

.forgot{

    text-align:right;

    margin-bottom:25px;

}

.forgot a{

    text-decoration:none;

    color:#2E7D32;

    font-weight:600;

    font-size:15px;

}

.forgot a:hover{

    text-decoration:underline;

}

button{

    width:100%;

    height:58px;

    border:none;

    border-radius:12px;

    background:#2E7D32;

    color:white;

    font-size:18px;

    font-weight:600;

    cursor:pointer;

    transition:.3s;

}

button:hover{

    background:#1B5E20;

    transform:translateY(-2px);

}

.register{

    margin-top:22px;

    text-align:center;

}

.register a{

    color:#2E7D32;

    text-decoration:none;

    font-weight:700;

}

.register a:hover{

    text-decoration:underline;

}

/*==============================
        TOAST MESSAGE
==============================*/

.toast{

    position:fixed;
 

    overflow:hidden;



    top:35px;

    left:50%;

    transform:translate(-50%, -40px);

    min-width:430px;

    max-width:550px;

    padding:18px 30px;

    border-radius:16px;

    display:flex;

    align-items:center;

    justify-content:center;

    gap:12px;

    font-size:18px;

    font-weight:600;

    backdrop-filter:blur(10px);

    -webkit-backdrop-filter:blur(10px);

    box-shadow:0 15px 35px rgba(0,0,0,.18);

    opacity:0;

    transition:all .45s ease;

    z-index:9999;

}



.toast.show{

    opacity:1;

    transform:translate(-50%,0);

}

.success{

    background:rgba(46,125,50,.95);

    color:white;

    border-left:6px solid #A5D6A7;

}

.error{

    background:#FFF5F5;

    color:#C62828;

    border:1px solid #F8CACA;

}

</style>

</head>

<body>

<!-- Toast code will come in Part 2 -->

<div class="container">

<div class="left">

<img src="images/logo.png" class="logo">

<h1>Welcome Back! 👋</h1>

<p>

Login to continue your journey

</p>

<div class="login-box">

<h2>Login</h2>

<form action="Login" method="post">

<div class="input-box">

<i class="fa-solid fa-envelope"></i>

<input
type="email"
name="email"
placeholder="Enter Email"
required>

</div>

<div class="input-box">

<i class="fa-solid fa-lock"></i>

<input
type="password"
name="password"
placeholder="Enter Password"
required>

</div>

<div class="forgot">

<a href="ForgotPassword.jsp">

Forgot Password?

</a>

</div>

<button type="submit">

<i class="fa-solid fa-arrow-right-to-bracket"></i>

&nbsp; Login

</button>

</form>

<div class="register">

Don't have an account?

<a href="Register.jsp">

Register

</a>

</div>

</div>

</div>

<div class="right">

<img src="images/login.png" alt="Login">

</div>

</div>
<%
String success = (String) request.getAttribute("success");
String error = (String) request.getAttribute("error");

if(success != null){
%>

<div id="toast" class="toast success">

    <i class="fa-solid fa-circle-check"></i>

    <%= success %>

</div>

<%
}
else if(error != null){
%>

<div id="toast" class="toast error">

    <i class="fa-solid fa-circle-xmark"></i>

    <%= error %>

</div>

<%
}
%>

<script>

window.onload = function(){

    const toast = document.getElementById("toast");

    if(toast){

        toast.classList.add("show");

        setTimeout(function(){

            toast.classList.remove("show");

        },3000);

    }

}

</script>

</body>

</html>