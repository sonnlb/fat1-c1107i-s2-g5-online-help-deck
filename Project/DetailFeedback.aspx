<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DetailFeedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblName" runat="server" Text="From:"></asp:Label>
    <asp:Label ID="lblName1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:Label ID="lblEmail1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblContent" runat="server" Text="Content:"></asp:Label>
    <asp:Label ID="lblContent1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
    <asp:Label ID="lblDate1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click"
        Text="Delete" />
</asp:Content>

