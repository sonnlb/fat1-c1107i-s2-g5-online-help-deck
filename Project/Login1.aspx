<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txtUserName" runat="server" Height="22px"></asp:TextBox>
    <asp:Label ID="lblLogin" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    <br />
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
    
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
        onclick="btnCancel_Click" />
    
</asp:Content>

