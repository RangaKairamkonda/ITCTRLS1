<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="ITCTRLS1.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color:#322653;
    color: #333;
}

header {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
}

.container {
    width: 90%;
    margin: 0 auto;
    max-width: 1200px;
}

.logo h1 {
    display: inline;
}

nav {
    float: right;
}

nav ul {
    list-style: none;
}

nav ul li {
    display: inline;
    margin-left: 20px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

.hero {
    background: url('construction.jpg') no-repeat center center/cover;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #fff;
    text-align: center;
}

.hero-content {
    background: rgba(0, 0, 0, 0.6);
    padding: 20px;
    border-radius: 10px;
}

.cta-button {
    background-color: #ff6b6b;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
    display: inline-block;
}

.about, .services, .projects, .contact {
    padding: 50px 0;
    background-color: white;
    text-align: center;
}

h2 {
    font-size: 2.5em;
    margin-bottom: 20px;
}

.service-list {
    list-style: none;
    padding: 0;
}

.service-list li {
    font-size: 1.2em;
    margin: 15px 0;
}

.contact form {
    display: grid;
    grid-template-columns: 1fr;
    gap: 20px;
    max-width: 600px;
    margin: 0 auto;
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
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
         
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
   

    <section id="home" class="hero">
        <div class="hero-content">
            <h2>Building the Future, One Brick at a Time</h2>
            <p>Delivering excellence in construction and infrastructure development.</p>
            <a href="#contact" class="cta-button">Get in Touch</a>
        </div>
    </section>

    <section id="about" class="about">
        <div class="container">
            <h2>About Us</h2>
            <p>RK Infra is a leading construction and infrastructure company with over 20 years of experience. We specialize in residential, commercial, and industrial projects, ensuring the highest standards of quality and safety in everything we do.</p>
        </div>
    </section>

    <section id="services" class="services">
        <div class="container">
            <h2>Our Services</h2>
            <ul class="service-list">
                <li><strong>Residential Construction</strong> - Crafting homes with precision and care.</li>
                <li><strong>Commercial Construction</strong> - Building modern office spaces and retail outlets.</li>
                <li><strong>Infrastructure Development</strong> - Roads, bridges, and large-scale infrastructure projects.</li>
            </ul>
        </div>
    </section>

    <section id="projects" class="projects">
        <div class="container">
            <h2>Our Projects</h2>
            <p>Check out some of our successful projects that showcase our expertise and commitment to quality.</p>
            <!-- Add images or project highlights here -->
        </div>
    </section>

    <section id="contact" class="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <p>If you have any questions or want to discuss a project, feel free to contact us.</p>
            
                <label for="name">Name:</label>
                <input type="text" id="name" name="name">

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" >

                <label for="message">Message:</label>
                <textarea id="message" name="message" ></textarea>

                <button type="submit">Send Message</button>
           
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 RK Infra. All rights reserved.</p>
        </div>
    </footer>
        </form>
</body>
</html>
