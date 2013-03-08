<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .nut
        {
            background-image: url('Image/button.png');
            border-radius: 3px;
            color:White;
            border: thin solid #660000;
            background-repeat: no-repeat;
            background-position: right top;
            height:26px;
            width:80px;
        }
        .nut:hover
        {
            background-image: url('Image/buttonchange.png');
        }
        .style15
        {
            text-align: right;
            padding-right: 20px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-position: left top; border: thin solid #C0C0C0; height: 492px; border-radius:10px; background-image: url('Image/network_add.png'); background-repeat: no-repeat;">
    <table style="width:100%;">
    <tr>

            <td >
                
            </td>
            <td>
              
                <br />
              
            </td>
            
        </tr>
        <tr>

            <td colspan="2" 
                style="text-align: center; font-size: 16px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #0000FF;">
                
                <asp:Label ID="Label2" runat="server" Text="Register"></asp:Label>
                
            </td>
            
        </tr>
        <tr>

            <td >
                
            </td>
            <td>
              
                <br />
              
            </td>
            
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblUserName" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorUserName" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorPassword" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblConPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtConPassWord" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorConPassword" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblType" runat="server" Text="Type:"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="ddlType" runat="server" Height="19px" 
                    onselectedindexchanged="ddlType_SelectedIndexChanged" Width="113px" 
                    AutoPostBack="True">
                    <asp:ListItem>End-user</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblDepart" runat="server" Text="Department:" Visible="False"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="ddldepart" runat="server" Visible="False" Height="18px" 
                    Width="106px">
                    <asp:ListItem>Bao ve</asp:ListItem>
                    <asp:ListItem>Lao cong</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorName" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorAge" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:Label ID="lblErorAddress" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; margin: 5px; padding: 5px">
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" CssClass="nut" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    onclick="btnCancel_Click" CssClass="nut" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

