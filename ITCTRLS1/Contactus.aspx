k<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="ITCTRLS1.Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RkInfra</title>
    <link rel="icon" href="Pics/Desktop/icon1.jpg" />
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
       .contact-section {
    padding: 50px 0;
    background-color: white;
    text-align: center;
}

.contact-section h2 {
    font-size: 2.5em;
    margin-bottom: 20px;
}

.contact-section p {
    font-size: 1.1em;
    margin-bottom: 30px;
    color: #666;
}

.contact-form {
    max-width: 600px;
    margin: 0 auto;
    text-align: left;
}

.contact-form label {
    display: block;
    margin-bottom: 8px;
    font-size: 1.1em;
}

.contact-form input, .contact-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.contact-form button {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1.1em;
}

.contact-form button:hover {
    background-color: #ff6b6b;
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
    <section class="contact-section">
        <div class="container">
            <h2>Contact Us</h2>
            <p>If you have any questions or inquiries, please fill out the form below, and we will get back to you as soon as possible.</p>
            
            <form class="contact-form" action="https://api.web3forms.com/submit"  method="post">
                <!-- Replace with your Access Key -->
            <input type="hidden" name="access_key" value="17e1b3f5-4e38-4050-a73a-83f4c67c0d1d"/>
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" />

                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" />

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" />

                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="5" ></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 RK Infra. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
