<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AgriConnect</title>

<!-- Google Font -->

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

/*======================================================
                    GLOBAL
======================================================*/

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{

    background:#F7FBF4;

}

/*======================================================
                    HEADER
======================================================*/

header{

    width:100%;

    height:90px;

    background:white;

    display:flex;

    justify-content:space-between;

    align-items:center;

    padding:0 70px;

    box-shadow:0 5px 20px rgba(0,0,0,.08);

}

/*===================== LOGO =====================*/

.logo{

    display:flex;

    align-items:center;

    gap:18px;

}

.logo img{

    width:100px;

    height:100px;

    object-fit:cover;

    border-radius:50%;

    margin-right:15px;

}

.logo-text h2{

    color:#2E7D32;

    font-size:40px;

}

.logo-text p{

    color:#666;

    font-size:17px;

}

/*===================== MENU =====================*/

nav ul{

    display:flex;

    list-style:none;

    gap:45px;

}

nav ul li a{

    text-decoration:none;

    color:#333;

    font-size:18px;

    font-weight:600;

}

nav ul li a:hover{

    color:#2E7D32;

}

/*===================== BUTTONS =====================*/

.buttons{

    display:flex;

    gap:15px;

}

.login{

    padding:12px 30px;

    border:2px solid #2E7D32;

    border-radius:10px;

    color:#2E7D32;

    text-decoration:none;

    font-weight:600;

}

.login:hover{

    background:#2E7D32;

    color:white;

}

.register{

    padding:12px 30px;

    background:#2E7D32;

    border-radius:10px;

    color:white;

    text-decoration:none;

    font-weight:600;

}

.register:hover{

    background:#1B5E20;

}







/*======================================================
                    HERO SECTION
======================================================*/

.hero{

    display:flex;

    justify-content:space-between;

    align-items:center;

    padding:60px 70px;

    background:linear-gradient(to right,#F7FBF4,#EEF8EC);

}

/*===================== LEFT =====================*/

.hero-left{

    width:50%;

}

.hero-left h1{

    font-size:72px;

    line-height:85px;

    color:#222;

    margin-bottom:25px;

    font-weight:700;

}

.hero-left h1 span{

    display:block;

    color:#2E7D32;

}

.hero-left p{

    font-size:22px;

    color:#666;

    line-height:40px;

    margin-bottom:45px;

}

/*===================== BUTTONS =====================*/

.hero-buttons{

    display:flex;

    gap:25px;

}

.start-btn{

    background:#2E7D32;

    color:white;

    padding:16px 38px;

    border-radius:12px;

    text-decoration:none;

    font-size:18px;

    font-weight:600;

    transition:.3s;

}

.start-btn:hover{

    background:#1B5E20;

}

.learn-btn{

    border:2px solid #2E7D32;

    color:#2E7D32;

    padding:16px 38px;

    border-radius:12px;

    text-decoration:none;

    font-size:18px;

    font-weight:600;

    transition:.3s;

}

.learn-btn:hover{

    background:#2E7D32;

    color:white;

}

/*===================== RIGHT =====================*/

.hero-right{

    width:45%;

    display:flex;

    justify-content:center;

}

.hero-right img{

    width:550px;

    max-width:100%;

    animation:floatImage 4s ease-in-out infinite;

}

/*===================== ANIMATION =====================*/

@keyframes floatImage{

    0%{
        transform:translateY(0px);
    }

    50%{
        transform:translateY(-15px);
    }

    100%{
        transform:translateY(0px);
    }

}






/*======================================================
                    WHY SECTION
======================================================*/

.why{

    padding:80px 70px;

    background:white;

    text-align:center;

}

.why h2{

    font-size:42px;

    color:#2E7D32;

    margin-bottom:10px;

}

.subtitle{

    font-size:18px;

    color:#666;

    margin-bottom:50px;

}

.why-container{

    display:flex;

    justify-content:center;

    gap:30px;

    flex-wrap:wrap;

}

.why-card{

    width:330px;

    background:#fff;

    padding:35px 30px;

    border-radius:18px;

    box-shadow:0 10px 25px rgba(0,0,0,.08);

    transition:.3s;

}

.why-card:hover{

    transform:translateY(-10px);

}

.why-card i{

    width:80px;

    height:80px;

    background:#2E7D32;

    color:white;

    border-radius:50%;

    display:flex;

    justify-content:center;

    align-items:center;

    font-size:30px;

    margin:auto;

    margin-bottom:25px;

}

.why-card h3{

    color:#222;

    margin-bottom:15px;

    font-size:24px;

}

.why-card p{

    color:#666;

    line-height:28px;

}










/*==========================================
        HOW IT WORKS
==========================================*/

.how{

    padding:80px 70px;

    background:#F7FBF4;

    text-align:center;

}

.how h2{

    font-size:42px;

    color:#2E7D32;

    margin-bottom:10px;

}

.steps{

    margin-top:60px;

    display:flex;

    justify-content:center;

    align-items:center;

    flex-wrap:wrap;

    gap:18px;

}

.step{

    width:180px;

}

.step-icon{

    width:90px;

    height:90px;

    margin:auto;

    background:#2E7D32;

    color:white;

    border-radius:50%;

    display:flex;

    justify-content:center;

    align-items:center;

    font-size:35px;

    margin-bottom:20px;

    transition:.3s;

}

.step-icon:hover{

    transform:scale(1.1);

}

.step h3{

    font-size:22px;

    margin-bottom:10px;

}

.step p{

    color:#666;

    line-height:25px;

    font-size:15px;

}

.arrow{

    font-size:30px;

    color:#2E7D32;

}










/*======================================================
                        FOOTER
======================================================*/

footer{

    background:#2E7D32;

    color:white;

    padding:60px 70px 20px;

}

.footer-container{

    display:flex;

    justify-content:space-between;

    flex-wrap:wrap;

    gap:40px;

}

.footer-box{

    width:250px;

}

.footer-box h2{

    margin-bottom:20px;

    font-size:35px;

}

.footer-box h3{

    margin-bottom:20px;

    font-size:24px;

}

.footer-box p{

    line-height:30px;

    color:#E8F5E9;

}

.footer-box ul{

    list-style:none;

}

.footer-box ul li{

    margin-bottom:15px;

}

.footer-box ul li a{

    text-decoration:none;

    color:white;

    transition:.3s;

}

.footer-box ul li a:hover{

    color:#C8E6C9;

    padding-left:8px;

}

footer hr{

    margin-top:40px;

    border:0;

    height:1px;

    background:#81C784;

}

.copyright{

    text-align:center;

    margin-top:20px;

    color:#E8F5E9;

    font-size:16px;

}













/*=====================================
            OUR MISSION
======================================*/

.mission{

    display:flex;

    justify-content:space-between;

    align-items:center;

    padding:90px 70px;

    background:#F7FBF4;

}

.mission-left{

    width:55%;

}

.mission-left img{

    width:100%;

    border-radius:20px;

    box-shadow:0 20px 40px rgba(0,0,0,.12);

}

.mission-right{

    width:40%;

}

.mission-right h2{

    font-size:42px;

    color:#2E7D32;

    margin-bottom:25px;

}

.mission-right p{

    font-size:18px;

    color:#666;

    line-height:35px;

    margin-bottom:35px;

}

.mission-points{

    display:flex;

    flex-direction:column;

    gap:18px;

}

.point{

    margin-bottom:18px;

    font-size:20px;

}

.point i{

    color:#2E7D32;

    margin-right:12px;

}

</style>

</head>

<body>

<header>

<div class="logo">

<img src="images/logo.png">

<div class="logo-text">

<h2>AgriConnect</h2>

<p>Farmers To Buyers Directly</p>

</div>

</div>

<nav>

<ul>

<li><a href="#">Home</a></li>

<li><a href="#">About</a></li>

<li><a href="#">Contact</a></li>

</ul>

</nav>

<div class="buttons">

<a href="Login.jsp" class="login">

<i class="fa-regular fa-user"></i>

&nbsp;Login

</a>

<a href="Register.jsp" class="register">

<i class="fa-solid fa-user-plus"></i>

&nbsp;Register

</a>

</div>

</header>
<section class="hero">

    <div class="hero-left">

        <h1>
            Connecting
            <span>Farmers & Buyers</span>
        </h1>

        <p>

            AgriConnect is a platform that connects
            farmers directly with buyers.

            Sell fresh crops without middlemen,
            get better prices and build trusted
            business relationships.

        </p>

        <div class="hero-buttons">

            <a href="Login.jsp" class="start-btn">

                Get Started

            </a>

            <a href="#about" class="learn-btn">

                Learn More

            </a>

        </div>

    </div>

    <div class="hero-right">

        <img src="images/hero.png">

    </div>

</section>
<section class="why">

    <h2>Why Choose AgriConnect?</h2>

    <p class="subtitle">
        A simple platform that connects farmers directly with buyers.
    </p>

    <div class="why-container">

        <div class="why-card">

            <i class="fa-solid fa-users"></i>

            <h3>Direct Connection</h3>

            <p>
                Farmers sell directly to buyers without
                any middlemen.
            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-indian-rupee-sign"></i>

            <h3>Fair Price</h3>

            <p>
                Farmers receive better prices
                for their products.
            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-handshake"></i>

            <h3>Trusted Platform</h3>

            <p>
                Safe and transparent
                buying and selling experience.
            </p>

        </div>

    </div>

</section>
<section class="how">

    <h2>How It Works</h2>

    <p class="subtitle">
        Buy and sell directly in just 5 simple steps.
    </p>

    <div class="steps">

        <div class="step">

            <div class="step-icon">
                <i class="fa-solid fa-user-plus"></i>
            </div>

            <h3>Register</h3>

            <p>Create your account as Farmer or Buyer.</p>

        </div>

        <div class="arrow">
            <i class="fa-solid fa-arrow-right"></i>
        </div>

        <div class="step">

            <div class="step-icon">
                <i class="fa-solid fa-seedling"></i>
            </div>

            <h3>Add Product</h3>

            <p>Farmers upload their fresh products.</p>

        </div>

        <div class="arrow">
            <i class="fa-solid fa-arrow-right"></i>
        </div>

        <div class="step">

            <div class="step-icon">
                <i class="fa-solid fa-cart-shopping"></i>
            </div>

            <h3>Browse</h3>

            <p>Buyers search and view products.</p>

        </div>

        <div class="arrow">
            <i class="fa-solid fa-arrow-right"></i>
        </div>

        <div class="step">

            <div class="step-icon">
                <i class="fa-solid fa-comments"></i>
            </div>

            <h3>Contact</h3>

            <p>Buyer contacts the farmer directly.</p>

        </div>

        <div class="arrow">
            <i class="fa-solid fa-arrow-right"></i>
        </div>

        <div class="step">

            <div class="step-icon">
                <i class="fa-solid fa-handshake"></i>
            </div>

            <h3>Deal</h3>

            <p>Complete the deal without middlemen.</p>

        </div>

    </div>

</section>

<footer>

    <div class="footer-container">

        <div class="footer-box">

            <h2>AgriConnect</h2>

            <p>
                Connecting Farmers and Buyers directly without
                middlemen for fair and transparent trade.
            </p>

        </div>

        <div class="footer-box">

            <h3>Quick Links</h3>

            <ul>

                <li><a href="#">Home</a></li>

                <li><a href="#">About</a></li>

                <li><a href="#">Contact</a></li>

                <li><a href="Login.jsp">Login</a></li>

            </ul>

        </div>

        <div class="footer-box">

            <h3>Services</h3>

            <ul>

                <li>Farmer Registration</li>

                <li>Buyer Registration</li>

                <li>Sell Products</li>

                <li>Buy Products</li>

            </ul>

        </div>

        <div class="footer-box">

            <h3>Contact</h3>

            <p>Email : support@agriconnect.com</p>

            <p>Phone : +91 9876543210</p>

            <p>Bangalore, Karnataka</p>

        </div>

    </div>

    <hr>

    <div class="copyright">

        © 2026 AgriConnect | All Rights Reserved

    </div>

</footer>

<section class="mission">

    <div class="mission-left">

        <img src="images/mission.png" alt="">

    </div>

    <div class="mission-right">

        <h2>Our Mission</h2>

        <p>
            AgriConnect aims to bridge the gap between farmers and buyers
            by creating a trusted marketplace without middlemen. Our goal
            is to ensure fair pricing, transparency, and easy access to
            agricultural products through technology.
        </p>

        <div class="mission-points">

            <div class="point">
                <i class="fa-solid fa-check"></i>
                Direct Farmer to Buyer
            </div>

            <div class="point">
                <i class="fa-solid fa-check"></i>
                Better Price for Farmers
            </div>

            <div class="point">
                <i class="fa-solid fa-check"></i>
                Trusted Marketplace
            </div>

            <div class="point">
                <i class="fa-solid fa-check"></i>
                Easy and Secure Platform
            </div>

        </div>

    </div>

</section>

</body>

</html>
