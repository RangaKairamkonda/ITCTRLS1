<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ITCTRLS1.SignIn" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RkInfra</title>
     <link rel="icon" href="Pics/Desktop/icon1.jpg" />
    <style type="text/css">
        body{
           margin:0;
           background-color:#322653;
           /*font-family: Arial, sans-serif;
          padding: 0;
          display: flex;
          justify-content: center;
          align-items: center;
          height:auto;*/
          
        }
        .section{
                     display: flex;
              align-items: center;
            justify-content: center;
            font-family: sans-serif;
              /*line-height:1.0;*/
             min-height: 30vh;
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
        

        .main {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 500px;
            
        }

        .main h2 {
            color: #EA1179;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }
        .txtboxes{
             width: 100%;
           margin-bottom: 15px;
            padding: 10px;
           box-sizing: border-box;
           border: 1px solid #ddd;
           border-radius: 5px;
        }

       
        select {
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
            border: none;
            background-color: #4caf50;
            color: white;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
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
     <h2>Registration Form</h2>
     <form id="form1" runat="server" onsubmit="return validateForm()">
         <label for="first">First Name:</label>
         <asp:TextBox Id="txtfname" runat="server" CssClass="txtboxes"></asp:TextBox>
         <span id="fname-error" style="color:red;"></span>
         
         <label for="last">Last Name:</label>
         <asp:TextBox Id="txtlname" runat="server" CssClass="txtboxes"></asp:TextBox>
         <span id="lname-error" style="color:red;"></span>
         
         <label for="email">Email:</label>
         <asp:TextBox Id="txtemail" runat="server" CssClass="txtboxes"></asp:TextBox>
         <span id="email-error" style="color:red;"></span>

         <label for="password">Password:</label>
         <asp:TextBox Id="txtpwd" runat="server" CssClass="txtboxes" TextMode="Password"></asp:TextBox>
         <span id="password-error" style="color:red;"></span>

         <label for="repassword">Confirm Password:</label>
         <asp:TextBox Id="txtcnfpwd" runat="server" CssClass="txtboxes" TextMode="Password"></asp:TextBox>
         <span id="confirm-password-error" style="color:red;"></span>

         <label for="mobile">Contact:</label>
         <asp:TextBox Id="phno" runat="server" MaxLength="10" CssClass="txtboxes"></asp:TextBox>
         <span id="contact-error" style="color:red;"></span>

         <label for="gender">Gender:</label>
         <select id="gender" name="gender">
             <option value="male">Male</option>
             <option value="female">Female</option>
             <option value="other">Other</option>
         </select>
         
         <div>
            <asp:Button ID="register" runat="server" Text="Register" OnClick="On_register" CssClass="button"/>
         </div>
     </form>
   </div>
</div>
    <script>
function validateForm() {
    var isValid = true;

    // First Name validation
    var fname = document.getElementById('<%= txtfname.ClientID %>').value;
    if (fname === "") {
        document.getElementById('fname-error').innerHTML = "First name is required";
        isValid = false;
    } else {
        document.getElementById('fname-error').innerHTML = "";
    }

    // Last Name validation
    var lname = document.getElementById('<%= txtlname.ClientID %>').value;
    if (lname === "") {
        document.getElementById('lname-error').innerHTML = "Last name is required";
        isValid = false;
    } else {
        document.getElementById('lname-error').innerHTML = "";
    }

    // Email validation
    var email = document.getElementById('<%= txtemail.ClientID %>').value;
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (email === "" || !emailPattern.test(email)) {
        document.getElementById('email-error').innerHTML = "Please enter a valid email";
        isValid = false;
    } else {
        document.getElementById('email-error').innerHTML = "";
    }

    // Password validation
    var password = document.getElementById('<%= txtpwd.ClientID %>').value;
    var passwordPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$/;
    if (password === "" || !passwordPattern.test(password)) {
        document.getElementById('password-error').innerHTML = "Password must contain at least one number, one letter, one special character, and be at least 8 characters long";
        isValid = false;
    } else {
        document.getElementById('password-error').innerHTML = "";
    }

    // Confirm Password validation
    var confirmPassword = document.getElementById('<%= txtcnfpwd.ClientID %>').value;
    if (confirmPassword === "" || confirmPassword !== password) {
        document.getElementById('confirm-password-error').innerHTML = "Passwords do not match";
        isValid = false;
    } else {
        document.getElementById('confirm-password-error').innerHTML = "";
    }

    // Contact validation
    var contact = document.getElementById('<%= phno.ClientID %>').value;
    if (contact === "" || contact.length !== 10 || isNaN(contact)) {
        document.getElementById('contact-error').innerHTML = "Please enter a valid 10-digit contact number";
        isValid = false;
    } else {
        document.getElementById('contact-error').innerHTML = "";
    }

    return isValid; // Prevent form submission if any validation fails
}
</script>
     </body>
    </html>
