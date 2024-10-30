<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutnav.aspx.cs" Inherits="ITCTRLS1.Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RkInfra</title>
     <link rel="icon" href="Pics/Desktop/icon1.jpg" />
    <style type="text/css">
        body{
           margin:0;
            background-color:#322653;
            padding:0;
            box-sizing:border-box;
        }
        .navbar{
         background-color:#322653;
         font-family:Calibri;
         padding-right:15px;
         padding-left:15px;
        }
        .navdiv{
            display:flex;
            align-items:center;
            justify-content:space-between;
            transition:all;
            
        }
        .logo a{
           font-size:55px;
           font-weight:600;
           color:white;
           text-decoration:none;
        }
        li{
            list-style:none;
            display:inline-block;
           
        }
        li a{
            color:white;
            font-size:18px;
            font-weight:bold;
            margin-right:25px;
            text-decoration:none;
        }
       .subt{
           color:#EA1179;
       }
       .navdiv a:hover{
           color:#EA1179;
       }
       h1{
           text-align:center;
           font-weight:50;
       }
       .about-section {
    padding: 50px 0;
    background-color: white;
    text-align: left;
}

.about-section h2 {
    font-size: 2.5em;
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.about-section p {
    font-size: 1.1em;
    margin-bottom: 20px;
    color: #666;
}

h3 {
    font-size: 1.8em;
    margin-bottom: 15px;
    color: #444;
}

.values-list, .why-choose-us {
    list-style: none;
    margin-left: 20px;
}

.values-list li, .why-choose-us li {
    font-size: 1.1em;
    margin: 10px 0;
}

footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 20px 0;
}

footer p {
    margin: 0;
}
.container {
    width: 90%;
    margin: 0 auto;
    max-width: 1200px;
    </style>
</head>
<body>
   <nav class="navbar">

       <div class="navdiv">
           <div class="logo"> 
               <a href="#">RK<lable class="subt">Infra</lable></a>
           </div>
           <ul>
               <li><a href="Home.aspx">Home</a></li>
               <li><a href="Aboutnav.aspx">About</a></li>
               <li><a href="Contactus.aspx">Contact</a></li>
             <li><a href="SignUp.aspx">SignIn</a></li>
             <li><a href="SignIn.aspx">SignUp</a></li>
           </ul>
       </div>
   </nav>
    <section class="about-section">
        <div class="container">
            <h2>About RK Infra</h2>
            <p>RK Infra is a leading construction and infrastructure development company, dedicated to building projects that shape the future. Founded over 20 years ago, our mission is to deliver quality construction services with a commitment to excellence, innovation, and sustainability.</p>

            <h3>Our Mission</h3>
            <p>To deliver high-quality infrastructure projects that enhance communities and foster growth. We aim to exceed expectations by combining cutting-edge technology with exceptional craftsmanship.</p>

            <h3>Our Vision</h3>
            <p>To be a global leader in construction and infrastructure, recognized for our dedication to quality, safety, and integrity.</p>

            <h3>Core Values</h3>
            <ul class="values-list">
                <li><strong>Quality:</strong> Commitment to superior craftsmanship and attention to detail.</li>
                <li><strong>Safety:</strong> Prioritizing the well-being of our employees and clients on every project.</li>
                <li><strong>Innovation:</strong> Embracing new technologies and ideas to build better and faster.</li>
                <li><strong>Sustainability:</strong> Building with a focus on environmental responsibility and long-term value.</li>
                <li><strong>Integrity:</strong> Conducting business with honesty and transparency in all interactions.</li>
            </ul>

            <h3>Our Team</h3>
            <p>At RK Infra, our success is built on the dedication and expertise of our team. From experienced project managers to skilled construction workers, every member of our team plays a crucial role in delivering top-tier projects. We believe in fostering a collaborative work environment that encourages growth, innovation, and professionalism.</p>

            <h3>Why Choose Us?</h3>
            <ul class="why-choose-us">
                <li>20+ years of experience in the construction industry.</li>
                <li>Proven track record of successful projects across multiple sectors.</li>
                <li>Commitment to on-time delivery and budget compliance.</li>
                <li>Focus on sustainability and environmentally-friendly construction methods.</li>
                <li>Highly skilled team of professionals ensuring the highest standards of quality.</li>
            </ul>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 RK Infra. All rights reserved.</p>
        </div>
    </footer>
</body>