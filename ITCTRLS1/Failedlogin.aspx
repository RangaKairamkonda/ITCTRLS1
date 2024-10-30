<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Failedlogin.aspx.cs" Inherits="ITCTRLS1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color:#322653;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.form-card {
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
    width: 300px;
}

.form-card h2 {
    color: #ff4c4c;
    margin-bottom: 15px;
}

.form-card p {
    margin-bottom: 20px;
    color: #666;
}

.retry-btn {
    background-color: red;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.retry-btn:hover {
    background-color:green;
}

    </style>
</head>
<body>
  
        <div>
              <div class="form-card">
        <h2>Invalid Credentials</h2>
        <p>Oops! The username or password you entered is incorrect.</p>
        <form action="SignUp.aspx" runat="server" id="action">
            <button type="submit" class="retry-btn">Retry Login</button>
        </form>
    </div>
        </div>
    
</body>
</html>
