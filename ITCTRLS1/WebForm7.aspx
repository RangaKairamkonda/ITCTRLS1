<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="ITCTRLS1.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

/* Style for GridView to make it look like a form */
body{
   background-color: #322653;
   margin:0;
   display:flex;
   flex-direction:row;
   align-items:center;
   justify-content:center;
}
.form-gridview {
    border-collapse: collapse;
    width: auto;
    margin-top: 20px;
    font-family: Arial, sans-serif;
    background-color: white;
}

.form-gridview td, .form-gridview th {
    padding: 10px;
    border: 1px solid #ddd;
    text-align:left;
    font-size: 14px;
}

/* Hide the grid header to make it more form-like */
.form-gridview th {
    display: none;
}

/* Style each row as a form field */
.form-gridview tr {
    display: flex;
    flex-wrap: wrap;
    margin-bottom: 10px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

/* Align cells horizontally within each row */
.form-gridview td {
    display: block;
    width: 50%;
    padding: 15px;
}

/* Labels (first column) */
.form-gridview td:first-child {
    font-weight: bold;
    width: 100%;
    color: #333;
}

/* Add some padding between the 'label' and the 'input' */
.form-gridview td + td {
    margin-top: 10px;
    color: #666;
}

/* Make rows look more like individual form fields */
.form-gridview tr td:first-child {
    padding: 10px;
    background-color:bisque;
    border-bottom: none;
    font-size: 1.1em;
}

/* Add some hover effect to mimic form interaction */
.form-gridview tr:hover {
    background-color:ghostwhite;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="form-gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:TemplateField HeaderText="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Phone">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phno") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phno") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Password">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("password") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

        </div>
    </form>
</body>
</html>
