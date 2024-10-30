<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="ITCTRLS1.Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RkInfra</title>
     <link rel="icon" href="Pics/icon.jpg" />
    <style type="text/css">
        body{
           margin:0;
            background-color:#322653;
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
       footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px 0;
}

footer p {
    margin: 0;
}

.movie-gallery {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    padding: 20px;
}

.movie-card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    margin: 15px;
    max-width: 300px;
    transition: transform 0.3s, box-shadow 0.3s;
}

.movie-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.movie-poster {
    width: 100%;
    height: auto;
}

.movie-info {
    padding: 15px;
}

.movie-title {
    font-size: 1.5em;
    margin-bottom: 10px;
}

.movie-description {
    font-size: 1em;
    color: #666;
    margin-bottom: 10px;
}

.movie-rating {
    font-size: 1.2em;
    color: #ffcc00;
    font-weight: bold;
}

        </style>
</head>
<body>
    <form id="form1" runat="server">
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
      <section class="movie-gallery">
        <div class="movie-card">
            <img src="Pics/Desktop/11.jpg" alt="Movie 1" class="movie-poster"/>
            <div class="movie-info">
                <h2 class="movie-title">We shape our buildings; thereafter, they shape us</h2>
                <div class="movie-rating"></div>
            </div>
        </div>

        <div class="movie-card">
            <img src="Pics/Desktop/22.jpg" alt="Movie 2" class="movie-poster"/>
            <div class="movie-info">
                <h2 class="movie-title"> Delivering excellence in construction and infrastructure development</h2>
           
                <div class="movie-rating"></div>
            </div>
        </div>

        <div class="movie-card">
            <img src="Pics/Desktop/77.jpg" alt="Movie 3" class="movie-poster"/>
            <div class="movie-info">
                <h2 class="movie-title">Building the Future, One Brick at a Time </h2>
         
                <p class="movie-description"></p>
                <div class="movie-rating"></div>
            </div>
        </div>

        <!-- Add more movie cards as needed -->
    </section>

          <footer>
      <div class="container">
          <p>&copy; 2024 RK Infra. All rights reserved.</p>
      </div>
  </footer>
    </form>
</body>
</html>
