<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
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
            <td class="style15">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" />
            </td>
            <td class="style16">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    onclick="btnCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

