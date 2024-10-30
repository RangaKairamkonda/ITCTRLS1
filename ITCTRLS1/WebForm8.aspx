<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="ITCTRLS1.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Style the GridView */
.form-gridview {
    width: 100%;
    border-collapse: collapse;
}

.form-gridview th {
    position: relative; /* Ensure the tooltip is relative to the header */
    padding: 10px;
    text-align: left;
    background-color: #f0f0f0;
    font-weight: bold;
    cursor: pointer; /* Indicate that the header is interactive */
}

/* Hidden by default - tooltip styling */
.form-gridview th .tooltip-content {
    display: none;
    position: absolute;
    top: 100%; /* Position below the header */
    left: 0;
    padding: 10px;
    background-color: #333;
    color: #fff;
    font-size: 12px;
    border-radius: 5px;
    z-index: 10;
    width: 200px; /* Adjust the width of the tooltip box */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

/* Display the tooltip content on hover */
.form-gridview th:hover .tooltip-content {
    display: block;
}

/* Triangle/arrow for the tooltip */
.form-gridview th .tooltip-content::before {
    content: '';
    position: absolute;
    top: -5px;
    left: 20px; /* Positioning of the arrow */
    border-width: 5px;
    border-style: solid;
    border-color: transparent transparent #333 transparent;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="form-gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
       
        <asp:TemplateField HeaderText="Name">
            <HeaderTemplate>
                <div>
                    Name
                
                    <div class="tooltip-content">This is the full name of the user.</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <%# Eval("fname") %>
            </ItemTemplate>
        </asp:TemplateField>

        
        <asp:TemplateField HeaderText="Email">
            <HeaderTemplate>
                <div>
                    Email
                    
                    <div class="tooltip-content">This is the email address of the user.</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <%# Eval("email") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Phone">
            <HeaderTemplate>
                <div>
                    Phone
                    <div class="tooltip-content">This is the phone number of the user.</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <%# Eval("phno") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="fname">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

        </div>
    </form>
</body>
</html>
