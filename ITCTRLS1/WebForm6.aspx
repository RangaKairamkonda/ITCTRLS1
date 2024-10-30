<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="ITCTRLS1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
 body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
   /* padding: 0;*/
    display: flex;
    justify-content: center;
    align-items: center;
    height: auto;
}

.movie-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 20px; /* Space between the cards */
    width: 90%;
    max-width: 1200px;
    margin: 20px auto;
}

.movie-card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    margin: 10px;
    width: 250px; /* Adjust width as needed */
    overflow: hidden;
    text-align: center;
    transition: transform 0.3s ease;
}

.movie-card:hover {
    transform: scale(1.05);
}

.movie-poster {
    width: 100%;
    height: 350px;
    object-fit: cover;
}

.movie-title {
    font-size: 1.2em;
    margin: 15px 0;
    color: #333;
}

.movie-release {
    font-size: 0.9em;
    color: #777;
}

.movie-description {
    font-size: 0.95em;
    color: #555;
    padding: 0 15px 20px 15px;
}


        .auto-style1 {
            width: 319px;
            height: 183px;
            position: absolute;
            top: 1852px;
            left: 461px;
            z-index: 1;
        }


    </style>
</head>
<body>
    <form id="form" runat="server">
        <div class="movie-container">
        <div class="movie-card">
            <img src="Pics/Desktop/1.jpg" alt="Movie 1" class="movie-poster"/>
            <h3 class="movie-title">1</h3>
            <p class="movie-release">Ranga Kairamkonda</p>
            <p class="movie-description">RK Group of Industries</p>
        </div>

        <div class="movie-card">
            <img src="Pics/Desktop/2.jpg" alt="Movie 2" class="movie-poster"/>
            <h3 class="movie-title">2</h3>
            <p class="movie-release">Sathish Paballa</p>
            <p class="movie-description">sathish Softtech.pvt</p>
        </div>

        <div class="movie-card">
            <img src="Pics/Desktop/3.jpg" alt="Movie 3" class="movie-poster"/>
            <h3 class="movie-title">3</h3>
            <p class="movie-release">Kishore Kairamkonda</p>
            <p class="movie-description">KUSR techworld.llp</p>
        </div>
     

 <div class="movie-card">
     <img src="Pics/Desktop/4.jpg" alt="Movie 3" class="movie-poster"/>
     <h3 class="movie-title">4</h3>
     <p class="movie-release">Akhil</p>
     <p class="movie-description">Akhil Eductaional Institutions</p>
     <p>For More Information<asp:Button ID="info4" runat="server" Text="Getmore" OnClick="info4_Click"></asp:Button>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1">
             <Columns>
                 <asp:TemplateField HeaderText="fname">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="email">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="phno">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("phno") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("phno") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
     </p>
 </div>
        <!-- Add more movie cards as needed -->
    </div>
   </form>
</body>
</html>
