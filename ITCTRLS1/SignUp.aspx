<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ITCTRLS1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RK Infra</title>
     <link rel="icon" href="Pics/Desktop/icon1.jpg" />
    <style>

    body{
    margin:0;
     background-color:#322653;

      
 }
    .section{
         display: flex;
align-items: center;
justify-content: center;
 font-family: sans-serif;
 line-height: 1.5;
 min-height: 90vh;
 flex-direction: column;
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
      font-size:50px;
     font-weight:600;
    font-family:sans-serif;
}


.main {
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    padding: 10px 20px;
    transition: transform 0.2s;
    width: 500px;
    text-align: center;
}



label {
    display: block;
    width: 100%;
    margin-top: 10px;
    margin-bottom: 5px;
    text-align: left;
    color: #555;
    font-weight: bold;
}

input {
    display: block;
    width: 100%;
    margin-bottom: 15px;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.button {
    padding: 15px;
    border-radius: 10px;
    margin-top: 15px;
    margin-bottom: 15px;
    border: none;
    color: white;
    cursor: pointer;
    background-color: #4CAF50;
    width: 100%;
    font-size: 16px;
}

.wrap {
    display: flex;
    justify-content: center;
    align-items: center;
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
        <div class="section">
    <div class="main">
        <h1 class="subt">RKInfra</h1>
        <h3>Enter your login credentials</h3>

          <form id="form1" runat="server" >
            <label for="first">
                Username:
            </label>
            <asp:TextBox type="text" Id="username" name="first" runat="server"
                placeholder="Enter your Username" ></asp:TextBox>
              <span id="name-error" style="color:red;"></span>

            <label for="password">
                Password:
            </label>
            <asp:TextBox Id="password" name="password"  runat="server"
                placeholder="Enter your Password" ></asp:TextBox>
              <span id="pwd-error" style="color:red;"></span>
            <div class="wrap">
                 
                <asp:Button ID="login" runat="server"  OnClick="Button1_Click" Text="Login" CssClass="button" />
                  
            </div>
        </form>
        
        <p>Not registered?
            <a href="SignIn.aspx" style="text-decoration: none;">
                Create an account
            </a>
        </p>
    </div>
            </div>
        <script>
            function validateForm() {
                var isValid = true;

                // First Name validation
                var fname = document.getElementById('<%= username.ClientID %>').value;
                if (fname === "") {
                    document.getElementById('name-error').innerHTML = "username is required";
                    isValid = false;
                } else {
                    document.getElementById('name-error').innerHTML = "";
                }

                // Last Name validation
                var lname = document.getElementById('<%= password.ClientID %>').value;
                if (lname === "") {
                    document.getElementById('pwd-error').innerHTML = "Password is required";
                    isValid = false;
                } else {
                    document.getElementById('pwd-error').innerHTML = "";
                }
                return isValid;
            }
    </script>
</body>
</html>
