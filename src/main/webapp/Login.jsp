<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AgriConnect - Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;

    background-image:url("https://images.pexels.com/photos/18100007/pexels-photo-18100007/free-photo-of-farmer-with-oxes-on-field.jpeg");
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
}

/* Main Container */

.container{

    width:1100px;
    height:550px;

    display:flex;

    border-radius:25px;

    overflow:hidden;

    background:rgba(255,255,255,0.00);
    

   

   

    box-shadow:0px 10px 35px rgba(0,0,0,.4);

}

/* Left Side */

.left{

    width:50%;

    display:flex;

    justify-content:center;

    align-items:center;

    flex-direction:column;

    color:white;

    text-align:center;
    
   
    

}

.left h1{

    font-size:70px;

    margin-bottom:15px;

    text-shadow:2px 2px 10px black;
    position: absolute;
    top: 130px;
    opacity: 1;

}

.left p{

    font-size:28px;

    text-shadow:1px 1px 8px black;
    position: absolute;
    top: 215px;

}

/* Right Side */

.right{

    width:50%;

    display:flex;

    justify-content:center;

    align-items:center;

}

/* Login Box */

.login-box{

    width:80%;

}

.login-box h2{

    text-align:center;

    color:rgb(0, 0, 0);

    font-size:40px;

    margin-bottom:35px;

}

/* Input Fields */

input{

    width:100%;

    padding:16px;

    margin-bottom:20px;

    border-radius:10px;

    border:1px solid #2E7D32;

    background:rgba(255,255,255,.9);

    font-size:18px;

}

input:focus{

    outline:none;

    border:2px solid green;

}

/* Button */

button{

    width:100%;

    padding:16px;

    border:none;

    border-radius:10px;

    background:#2E7D32;

    color:white;

    font-size:20px;

    cursor:pointer;

    transition:.3s;

}

button:hover{

    background:#1B5E20;

    transform:scale(1.02);

}

/* Register */

.register{

    margin-top:20px;

    text-align:center;

    color:black;

    font-size:18px;

}

.register a{

    color:blue;

    text-decoration:none;

    font-weight:bold;

}

.register a:hover{

    text-decoration:underline;

}


/* Toast Message */

.toast{
    position:fixed;
    top:20px;
    right:20px;
    padding:15px 25px;
    border-radius:10px;
    color:white;
    font-size:16px;
    font-weight:bold;
    box-shadow:0 5px 15px rgba(0,0,0,.3);
    opacity:0;
    transform:translateX(120%);
    transition:.5s;
    z-index:9999;
}

.toast.show{
    opacity:1;
    transform:translateX(0);
}

.success{
    background:#28a745;
}


    .error{
    background:white;
    color:#28a745;
    border-left:5px solid #28a745;
}


</style>

</head>

<body>

<%
String success=(String)request.getAttribute("success");
String error=(String)request.getAttribute("error");

if(success!=null){
%>

<div id="toast" class="toast success">
    ✅ <%=success %>
</div>

<%
}
else if(error!=null){
%>

<div id="toast" class="toast error">
    ❌ <%=error %>
</div>

<%
}
%>

<div class="container">

    <!-- Left Section -->

    <div class="left">

        <h1>AgriConnect</h1>

        <p>Connecting Farmers with Buyers</p>

    </div>

    <!-- Right Section -->

    <div class="right">

        <div class="login-box">

            <h2>Login</h2>

            <form action="Login" method="post">

                <input
                    type="email"
                    name="email"
                    placeholder="Enter Email"
                    required>

                <input
                    type="password"
                    name="password"
                    placeholder="Enter Password"
                    required>

                <button type="submit">
                    Login
                </button>

            </form>

            <div class="register">

                Don't have an account?
                <a href="Register.jsp">Register.jsp</a>

            </div>

        </div>

    </div>

</div>
<script>

window.onload=function(){

    var toast=document.getElementById("toast");

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