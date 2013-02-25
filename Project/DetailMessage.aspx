<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DetailMessage.aspx.cs" Inherits="DetailMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblFrom" runat="server" Text="From:"></asp:Label>
    <asp:Label ID="lblFrom2" runat="server" Text="Label"></asp:Label>
    </br>
    <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>
    <asp:Label ID="lblTitle2" runat="server" Text="Label"></asp:Label>
    </br>
    <asp:Label ID="lblContent" runat="server" Text="Content:"></asp:Label>
    </br>
    <asp:Label ID="lblContent2" runat="server" Text="Label"></asp:Label>
    </br>
    <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
    <asp:Label ID="lblDate2" runat="server" Text="Label"></asp:Label>
</asp:Content>

