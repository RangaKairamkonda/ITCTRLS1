<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="ITCTRLS1.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 192px;
            left: 99px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 151px;
            left: 122px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br/>
            <asp:Button id="Btn2" runat="server" Text="Btn2"></asp:Button>

            
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            <asp:Button id="btn1" runat="server" Text="Btn1" OnClick="btn1_Click"></asp:Button>
        </p>
        <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="form-gridview" >
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
      
           
      
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
