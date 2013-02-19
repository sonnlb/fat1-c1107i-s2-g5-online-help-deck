<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Old Pass:"></asp:Label>
<asp:TextBox ID="txtOldPass" runat="server" TextMode="Password"></asp:TextBox>
<asp:Label ID="lblChange" runat="server" ForeColor="Red" Text="Label" 
    Visible="False"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Text="New Pass:"></asp:Label>
<asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox>
<br />
<asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
<asp:TextBox ID="txtcfPass" runat="server" TextMode="Password"></asp:TextBox>
<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" 
    onclick="btnSubmit_Click" />
<asp:Button ID="btnCancel" runat="server" Text="Cancel" 
    onclick="btnCancel_Click" />
<br />
</asp:Content>

