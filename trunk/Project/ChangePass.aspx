<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

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
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #3300FF;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="cangiua" style="border: thin solid #C0C0C0; height: 292px; border-radius:10px">
    <br />
    <asp:Label ID="Label4" runat="server" Text="Change Password" CssClass="style1"></asp:Label>
    <br />
    <br />
    <br />
<asp:Label ID="Label1" runat="server" Text="Old Pass:"></asp:Label>
<asp:TextBox ID="txtOldPass" runat="server" TextMode="Password" 
        style="margin-left: 73px"></asp:TextBox>
<asp:Label ID="lblChange" runat="server" ForeColor="Red" Text="Label" 
    Visible="False"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Text="New Pass:"></asp:Label>
<asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" 
        style="margin-left: 67px"></asp:TextBox>
<br />
<asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
<asp:TextBox ID="txtcfPass" runat="server" TextMode="Password" 
        style="margin-left: 15px"></asp:TextBox>
    <br />
<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" 
    onclick="btnSubmit_Click" CssClass="nut" />
<asp:Button ID="btnCancel" runat="server" Text="Cancel" 
    onclick="btnCancel_Click" CssClass="nut" />
<br />
</div>

</asp:Content>

