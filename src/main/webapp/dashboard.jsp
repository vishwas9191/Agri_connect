<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.agri_connect.dto.Farmer"%>

<%
Farmer farmer=(Farmer)session.getAttribute("login done");

if(farmer==null){
    response.sendRedirect("Login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Farmer Dashboard | AgriConnect</title>

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

background:#F5FBF4;

display:flex;

height:100vh;

overflow:hidden;

}

/*==========================
        SIDEBAR
==========================*/

.sidebar{

width:270px;

background:linear-gradient(180deg,#0B5D2A,#1F8A44);

color:white;

display:flex;

flex-direction:column;

padding:30px 20px;

box-shadow:5px 0 25px rgba(0,0,0,.15);

}

/*==========================
        LOGO
==========================*/

.logo{

display:flex;

align-items:center;

gap:15px;

margin-bottom:45px;

}

.logo img{

width:60px;

}

.logo h2{

font-size:30px;

font-weight:700;

}

.logo p{

font-size:13px;

opacity:.8;

}

/*==========================
        MENU
==========================*/

.menu{

display:flex;

flex-direction:column;

gap:12px;

}

.menu a{

text-decoration:none;

color:white;

padding:15px 18px;

border-radius:12px;

font-size:18px;

display:flex;

align-items:center;

gap:15px;

transition:.3s;

}

.menu a:hover{

background:rgba(255,255,255,.18);

}

.menu .active{

background:#3AAE58;

font-weight:600;

}

.menu i{

font-size:22px;

width:28px;

}

/*==========================
    FARMER PROFILE
==========================*/

.profile{

margin-top:auto;

text-align:center;

padding-top:25px;

border-top:1px solid rgba(255,255,255,.25);

}

.profile img{

width:110px;

height:110px;

border-radius:50%;

border:4px solid white;

object-fit:cover;

margin-bottom:12px;

}

.profile h3{

font-size:22px;

}

.profile p{

font-size:15px;

opacity:.8;

}

/*==========================
        MAIN AREA
==========================*/

.main{

flex:1;

padding:35px;

overflow-y:auto;

}

/*==========================
        HEADER
==========================*/

.header{

display:flex;

justify-content:space-between;

align-items:center;

margin-bottom:35px;

}

.header h1{

font-size:42px;

color:#1E5F30;

}

.header p{

font-size:18px;

color:#666;

margin-top:5px;

}

/*==========================
SEARCH BAR
==========================*/

.search{

display:flex;

align-items:center;

background:white;

padding:12px 20px;

border-radius:40px;

width:360px;

box-shadow:0 8px 20px rgba(0,0,0,.08);

}

.search i{

color:#2E7D32;

font-size:20px;

margin-right:10px;

}

.search input{

border:none;

outline:none;

font-size:16px;

width:100%;

}

/*==========================
TOP RIGHT
==========================*/

.top-right{

display:flex;

align-items:center;

gap:20px;

}

.notify{

position:relative;

font-size:24px;

color:#2E7D32;

cursor:pointer;

}

.notify span{

position:absolute;

top:-8px;

right:-10px;

background:red;

color:white;

width:20px;

height:20px;

display:flex;

justify-content:center;

align-items:center;

border-radius:50%;

font-size:11px;

}

.user{

display:flex;

align-items:center;

gap:12px;

}

.user img{

width:55px;

height:55px;

border-radius:50%;

object-fit:cover;

}

.user h4{

font-size:18px;

color:#222;

}

.user p{

font-size:14px;

color:#777;

}

/*==========================
        DASHBOARD CARDS
==========================*/

.cards{

display:grid;

grid-template-columns:repeat(4,1fr);

gap:22px;

margin-bottom:35px;

}

.card{

background:white;

border-radius:18px;

padding:25px;

display:flex;

align-items:center;

gap:20px;

box-shadow:0 8px 25px rgba(0,0,0,.08);

}

.icon{

width:70px;

height:70px;

border-radius:50%;

display:flex;

justify-content:center;

align-items:center;

font-size:28px;

color:white;

}

.green .icon{background:#2E7D32;}

.orange .icon{background:#F9A825;}

.blue .icon{background:#2196F3;}

.purple .icon{background:#9C27B0;}

.card h2{

font-size:34px;

color:#222;

}

.card p{

color:#666;

}


/*==========================
CONTENT
==========================*/

.content{

display:grid;

grid-template-columns:3fr 1fr;

gap:25px;

}

.table-box{

background:white;

border-radius:18px;

padding:25px;

box-shadow:0 8px 25px rgba(0,0,0,.08);

}

.table-header{

display:flex;

justify-content:space-between;

align-items:center;

margin-bottom:25px;

}

.table-header h2{

color:#1E5F30;

}

.table-header button{

background:#2E7D32;

padding:12px 20px;

color:white;

border:none;

border-radius:10px;

cursor:pointer;

font-size:15px;

}

table{

width:100%;

border-collapse:collapse;

}

table th{

background:#2E7D32;

color:white;

padding:15px;

}

table td{

padding:15px;

border-bottom:1px solid #ddd;

}

.available{

background:#DFF6DD;

padding:6px 12px;

border-radius:20px;

color:#2E7D32;

font-weight:600;

}

.sold{

background:#EEE;

padding:6px 12px;

border-radius:20px;

font-weight:600;

}

.view-btn{

background:#2E7D32;

color:white;

padding:8px 14px;

border:none;

border-radius:8px;

cursor:pointer;

}

.details-btn{

background:#555;

color:white;

padding:8px 14px;

border:none;

border-radius:8px;

cursor:pointer;

}


/*==========================
REQUEST BOX
==========================*/

.request-box{

background:white;

padding:22px;

border-radius:18px;

box-shadow:0 8px 25px rgba(0,0,0,.08);

}

.request-box h2{

margin-bottom:20px;

color:#1E5F30;

}

.request{

padding:18px;

border:1px solid #E5E5E5;

border-radius:12px;

margin-bottom:18px;

}

.request h3{

margin-bottom:10px;

}

.pending{

background:#FFF3CD;

padding:6px 12px;

border-radius:20px;

color:#A86A00;

font-size:14px;

display:inline-block;

margin-top:12px;

}

.accepted{

background:#DFF6DD;

padding:6px 12px;

border-radius:20px;

color:#2E7D32;

font-size:14px;

display:inline-block;

margin-top:12px;

}

/*==========================
BOTTOM SECTION
==========================*/

.bottom-section{

margin-top:30px;

display:grid;

grid-template-columns:2fr 1fr;

gap:25px;

}

.activity,
.tips{

background:white;

padding:25px;

border-radius:18px;

box-shadow:0 8px 25px rgba(0,0,0,.08);

}

.activity h2,
.tips h2{

color:#1E5F30;

margin-bottom:25px;

}

.timeline{

display:flex;

flex-direction:column;

gap:25px;

}

.item{

display:flex;

gap:18px;

align-items:flex-start;

}

.circle{

width:18px;

height:18px;

border-radius:50%;

margin-top:6px;

}

.green{

background:#2E7D32;

}

.yellow{

background:#F9A825;

}

.blue{

background:#2196F3;

}

.item h4{

margin-bottom:5px;

color:#222;

}

.item p{

color:#666;

}

.item small{

color:#999;

}

.tips ul{

padding-left:20px;

}

.tips li{

margin-bottom:18px;

font-size:16px;

color:#444;

line-height:26px;

}

footer{

margin-top:30px;

text-align:center;

color:#777;

padding:20px;

font-size:15px;

}

</style>

</head>

<body>

<!--==========================
        SIDEBAR
===========================-->

<div class="sidebar">

<div class="logo">

<img src="images/logo.png">

<div>

<h2>AgriConnect</h2>

<p>Farm To Future</p>

</div>

</div>

<div class="menu">

<a href="#" class="active">

<i class="fa-solid fa-house"></i>

Dashboard

</a>

<a href="UploadCrop.jsp">

<i class="fa-solid fa-seedling"></i>

Upload Crop

</a>

<a href="MyCrops.jsp">

<i class="fa-solid fa-leaf"></i>

My Crops

</a>

<a href="CropRequests.jsp">

<i class="fa-solid fa-envelope"></i>

Crop Requests

</a>

<a href="Profile.jsp">

<i class="fa-solid fa-user"></i>

Profile

</a>

<a href="Logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</div>

<div class="profile">

<img src="images/farmer.png">

<h3><%=farmer.getName()%></h3>

<p>Farmer</p>

</div>

</div>

<!--==========================
        MAIN
===========================-->

<div class="main">

<div class="header">

<div>

<h1>

Welcome,

<%=farmer.getName()%> 👋

</h1>

<p>

Manage your crops and requests efficiently.

</p>

</div>

<div class="top-right">

<div class="search">

<i class="fa-solid fa-magnifying-glass"></i>

<input
type="text"
placeholder="Search crops...">

</div>

<div class="notify">

<i class="fa-regular fa-bell"></i>

<span>3</span>

</div>

<div class="user">

<img src="images/farmer.png">

<div>

<h4><%=farmer.getName()%></h4>

<p>Farmer</p>

</div>

</div>

</div>

</div>

<!-- PART 2 STARTS HERE -->


<!--==========================
        DASHBOARD CARDS
===========================-->

<div class="cards">

    <div class="card green">

        <div class="icon">

            <i class="fa-solid fa-seedling"></i>

        </div>

        <div>

            <h2>8</h2>

            <p>Total Crops</p>

        </div>

    </div>

    <div class="card orange">

        <div class="icon">

            <i class="fa-solid fa-box"></i>

        </div>

        <div>

            <h2>5</h2>

            <p>Active Listings</p>

        </div>

    </div>

    <div class="card blue">

        <div class="icon">

            <i class="fa-solid fa-envelope"></i>

        </div>

        <div>

            <h2>2</h2>

            <p>Pending Requests</p>

        </div>

    </div>

    <div class="card purple">

        <div class="icon">

            <i class="fa-solid fa-circle-check"></i>

        </div>

        <div>

            <h2>6</h2>

            <p>Completed Deals</p>

        </div>

    </div>

</div>


<!--==========================
        CONTENT
===========================-->

<div class="content">


<div class="table-box">

<div class="table-header">

<h2>

<i class="fa-solid fa-leaf"></i>

&nbsp; My Crop Listings

</h2>

<a href="UploadCrop.jsp">

<button>

<i class="fa-solid fa-plus"></i>

&nbsp; Upload Crop

</button>

</a>

</div>


<table>

<tr>

<th>Crop</th>

<th>Category</th>

<th>Quantity</th>

<th>Price/Kg</th>

<th>Harvest</th>

<th>Status</th>

<th>Action</th>

</tr>

<tr>

<td>🌾 Tomato</td>

<td>Vegetable</td>

<td>500 Kg</td>

<td>₹25</td>

<td>20 Jul 2026</td>

<td>

<span class="available">

Available

</span>

</td>

<td>

<button class="view-btn">

View Requests

</button>

</td>

</tr>

<tr>

<td>🥔 Potato</td>

<td>Vegetable</td>

<td>300 Kg</td>

<td>₹20</td>

<td>18 Jul 2026</td>

<td>

<span class="available">

Available

</span>

</td>

<td>

<button class="view-btn">

View Requests

</button>

</td>

</tr>

<tr>

<td>🧅 Onion</td>

<td>Vegetable</td>

<td>200 Kg</td>

<td>₹32</td>

<td>22 Jul 2026</td>

<td>

<span class="sold">

Sold

</span>

</td>

<td>

<button class="details-btn">

View Details

</button>

</td>

</tr>

<tr>

<td>🥬 Cabbage</td>

<td>Vegetable</td>

<td>150 Kg</td>

<td>₹18</td>

<td>16 Jul 2026</td>

<td>

<span class="available">

Available

</span>

</td>

<td>

<button class="view-btn">

View Requests

</button>

</td>

</tr>

</table>

</div>


<div class="request-box">

<h2>

Recent Requests

</h2>

<div class="request">

<h3>Bangalore APMC</h3>

<p>

Requested

<b>300 Kg Tomato</b>

</p>

<span class="pending">

Pending

</span>

</div>

<div class="request">

<h3>Yelahanka APMC</h3>

<p>

Requested

<b>150 Kg Onion</b>

</p>

<span class="accepted">

Accepted

</span>

</div>

<div class="request">

<h3>Chikkaballapur APMC</h3>

<p>

Requested

<b>200 Kg Potato</b>

</p>

<span class="pending">

Pending

</span>

</div>

</div>

</div>
<!--==========================
        BOTTOM SECTION
===========================-->

<div class="bottom-section">

<div class="activity">

<h2>

<i class="fa-solid fa-chart-line"></i>

Farm Activity

</h2>

<div class="timeline">

<div class="item">

<div class="circle green"></div>

<div>

<h4>New Crop Uploaded</h4>

<p>Tomato - 500 Kg added successfully.</p>

<small>Today • 10:30 AM</small>

</div>

</div>

<div class="item">

<div class="circle yellow"></div>

<div>

<h4>New Purchase Request</h4>

<p>Bangalore APMC requested 300 Kg Tomato.</p>

<small>Yesterday • 5:40 PM</small>

</div>

</div>

<div class="item">

<div class="circle blue"></div>

<div>

<h4>Crop Sold</h4>

<p>200 Kg Onion sold successfully.</p>

<small>2 Days Ago</small>

</div>

</div>

</div>

</div>

<div class="tips">

<h2>

<i class="fa-solid fa-lightbulb"></i>

Quick Tips

</h2>

<ul>

<li>🌱 Upload fresh crop details regularly.</li>

<li>📦 Keep crop quantity updated.</li>

<li>💰 Set competitive prices.</li>

<li>📩 Respond quickly to APMC requests.</li>

<li>📈 Check dashboard daily.</li>

</ul>

</div>

</div>

<footer>

© 2026 AgriConnect | Connecting Farmers with Buyers 🌾

</footer>

</div>

</body>

</html>