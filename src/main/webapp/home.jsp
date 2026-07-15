<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AgriConnect</title>

    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

    <style>

    /* CSS WILL GO HERE */
    /*==========================
    GOOGLE FONT
===========================*/

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap');

/*==========================
      GLOBAL
===========================*/

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

html{
    scroll-behavior:smooth;
}

body{
    background:#f5fff6;
    color:#222;
    overflow-x:hidden;
}

/*==========================
      NAVBAR
===========================*/

header{

    width:100%;
    height:90px;

    background:#fff;

    display:flex;
    justify-content:space-between;
    align-items:center;

    padding:0 80px;

    position:sticky;
    top:0;

    z-index:1000;

    box-shadow:0 8px 20px rgba(0,0,0,.08);

}

.logo{

    display:flex;
    align-items:center;
    gap:15px;

}

.logo img{

    width:60px;

}

.logo-text h2{

    color:#2E7D32;
    font-size:30px;
    font-weight:700;

}

.logo-text p{

    color:#777;
    font-size:14px;

}

nav ul{

    display:flex;
    list-style:none;
    gap:45px;

}

nav ul li a{

    text-decoration:none;
    color:#333;
    font-size:18px;
    font-weight:500;
    transition:.3s;

}

nav ul li a:hover{

    color:#2E7D32;

}

.active{

    color:#2E7D32;

}

.login-btn{

    text-decoration:none;

    color:#2E7D32;

    border:2px solid #2E7D32;

    padding:12px 28px;

    border-radius:10px;

    font-weight:600;

    transition:.4s;

}

.login-btn:hover{

    background:#2E7D32;
    color:white;

}

/*==========================
      HERO SECTION
===========================*/

.hero{

    display:flex;
    justify-content:space-between;
    align-items:center;

    min-height:90vh;

    padding:70px 80px;

}

.hero-left{

    width:52%;

}

.hero-left h1{

    font-size:70px;
    line-height:85px;
    margin-bottom:20px;

}

.hero-left span{

    color:#2E7D32;

}

.line{

    width:180px;
    height:5px;
    background:#2E7D32;
    border-radius:50px;

    margin-bottom:30px;

}

.hero-left p{

    font-size:20px;

    line-height:35px;

    color:#666;

    margin-bottom:40px;

}

/*part-2*/
/*==========================
      FEATURES
===========================*/

.features{

    display:flex;
    gap:20px;
    margin-bottom:50px;
    flex-wrap:wrap;

}

.feature{

    background:#fff;

    padding:18px 22px;

    border-radius:15px;

    display:flex;
    align-items:center;

    gap:12px;

    box-shadow:0 8px 20px rgba(0,0,0,.08);

    transition:.4s;

}

.feature:hover{

    transform:translateY(-8px);

}

.feature i{

    width:50px;
    height:50px;

    background:#2E7D32;

    color:white;

    border-radius:50%;

    display:flex;
    justify-content:center;
    align-items:center;

    font-size:20px;

}

.feature span{

    font-size:17px;
    font-weight:600;

}

/*==========================
      BUTTONS
===========================*/

.buttons{

    display:flex;
    gap:25px;

}

.start-btn{

    text-decoration:none;

    background:#2E7D32;

    color:white;

    padding:18px 40px;

    border-radius:12px;

    font-size:18px;

    font-weight:600;

    transition:.4s;

}

.start-btn:hover{

    background:#1B5E20;

    transform:translateY(-5px);

}

.register-btn{

    text-decoration:none;

    color:#2E7D32;

    border:2px solid #2E7D32;

    padding:18px 40px;

    border-radius:12px;

    font-size:18px;

    font-weight:600;

    transition:.4s;

}

.register-btn:hover{

    background:#2E7D32;

    color:white;

}

/*==========================
      HERO IMAGE
===========================*/

.hero-right{

    width:45%;

    display:flex;

    justify-content:center;

    align-items:center;

}

.hero-right img{

    width:100%;

    max-width:600px;

    animation:floatImage 4s ease-in-out infinite;

}

/*==========================
      FLOAT ANIMATION
===========================*/

@keyframes floatImage{

    0%{

        transform:translateY(0);

    }

    50%{

        transform:translateY(-20px);

    }

    100%{

        transform:translateY(0);

    }

}
/*part-3*/
/*==========================
      STATS SECTION
===========================*/

.stats{

    width:90%;
    margin:60px auto;

    display:grid;
    grid-template-columns:repeat(4,1fr);

    gap:25px;

}

.card{

    background:#fff;

    padding:40px 20px;

    border-radius:20px;

    text-align:center;

    box-shadow:0 10px 25px rgba(0,0,0,.08);

    transition:.4s;

}

.card:hover{

    transform:translateY(-10px);

    box-shadow:0 20px 40px rgba(0,0,0,.12);

}

.card i{

    width:80px;
    height:80px;

    background:#2E7D32;

    color:white;

    border-radius:50%;

    display:flex;
    justify-content:center;
    align-items:center;

    margin:auto;

    font-size:30px;

}

.card h2{

    margin-top:20px;

    font-size:38px;

    color:#2E7D32;

}

.card p{

    margin-top:10px;

    color:#666;

    font-size:18px;

}

/*==========================
      SCROLLBAR
===========================*/

::-webkit-scrollbar{

    width:10px;

}

::-webkit-scrollbar-thumb{

    background:#2E7D32;

    border-radius:20px;

}

::-webkit-scrollbar-track{

    background:#eee;

}

/*==========================
      TEXT SELECTION
===========================*/

::selection{

    background:#2E7D32;
    color:white;

}

/*==========================
      RESPONSIVE
===========================*/

@media(max-width:1200px){

header{

    padding:0 40px;

}

.hero{

    padding:60px 40px;

}

.hero-left h1{

    font-size:55px;
    line-height:70px;

}

.hero-left p{

    font-size:18px;

}

.stats{

    grid-template-columns:repeat(2,1fr);

}

}

@media(max-width:900px){

header{

    flex-direction:column;

    height:auto;

    padding:20px;

}

nav ul{

    margin:20px 0;

}

.hero{

    flex-direction:column-reverse;

    text-align:center;

}

.hero-left{

    width:100%;

}

.hero-right{

    width:100%;

    margin-bottom:40px;

}

.hero-right img{

    width:80%;

}

.features{

    justify-content:center;

}

.buttons{

    justify-content:center;

}

.line{

    margin:auto;

    margin-top:20px;

    margin-bottom:30px;

}

.stats{

    grid-template-columns:1fr;

}

}

@media(max-width:600px){

.logo-text h2{

    font-size:24px;

}

.hero-left h1{

    font-size:40px;

    line-height:55px;

}

.hero-left p{

    font-size:16px;

    line-height:28px;

}

.start-btn,
.register-btn{

    width:100%;

    text-align:center;

    padding:15px;

}

.buttons{

    flex-direction:column;

}

.feature{

    width:100%;

}

nav ul{

    gap:20px;

}

}


    </style>

</head>

<body>
<header>

    <div class="logo">

        <img src="https://static.vecteezy.com/system/resources/previews/071/129/389/large_2x/farmers-shaking-hands-at-local-market-after-successful-deal-photo.jpg" alt="Logo">

        <div class="logo-text">

            <h2>AgriConnect</h2>

            <p>Farmers To Buyers Directly</p>

        </div>

    </div>

    <nav>

        <ul>

            <li><a href="#" class="active">Home</a></li>

            <li><a href="#">About</a></li>

            <li><a href="#">Contact</a></li>

        </ul>

    </nav>

    <a href="login.jsp" class="login-btn">
        <i class="fa-regular fa-user"></i>
        Login
    </a>

</header>





<!-- HERO SECTION -->

<section class="hero">

    <div class="hero-left">

        <h1>

            Connecting

            <span>Farmers & Buyers</span>

        </h1>

        <div class="line"></div>

        <p>

            AgriConnect is a trusted platform that connects farmers
            directly with buyers. Sell fresh crops without middlemen,
            get better prices, and make agriculture smarter.

        </p>



        <div class="features">

            <div class="feature">

                <i class="fa-solid fa-users"></i>

                <span>No Middleman</span>

            </div>

            <div class="feature">

                <i class="fa-solid fa-indian-rupee-sign"></i>

                <span>Fair Price</span>

            </div>

            <div class="feature">

                <i class="fa-solid fa-shield-halved"></i>

                <span>Trusted Trade</span>

            </div>

        </div>



        <div class="buttons">

            <a href="login.jsp" class="start-btn">

                Get Started

            </a>

            <a href="register.jsp" class="register-btn">

                Register

            </a>

        </div>

    </div>





    <div class="hero-right">

        <img src="images/farmer.png" alt="Farmer">

    </div>

</section>





<!-- STATS SECTION -->

<section class="stats">

    <div class="card">

        <i class="fa-solid fa-tractor"></i>

        <h2>100+</h2>

        <p>Farmers</p>

    </div>



    <div class="card">

        <i class="fa-solid fa-cart-shopping"></i>

        <h2>250+</h2>

        <p>Buyers</p>

    </div>



    <div class="card">

        <i class="fa-solid fa-seedling"></i>

        <h2>500+</h2>

        <p>Products</p>

    </div>



    <div class="card">

        <i class="fa-solid fa-handshake"></i>

        <h2>100%</h2>

        <p>Direct Trade</p>

    </div>

</section>

<!-- HTML WILL GO HERE -->

</body>
</html>