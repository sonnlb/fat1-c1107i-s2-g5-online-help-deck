<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DetailMessage.aspx.cs" Inherits="DetailMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
 .canbentrai
        {
            margin-left:250px;
        }
        .canbentrai2
        {
            margin-left:40px;   
         }
         .canbentrai3
        {
            margin-left:25px;   
         }
         .canbentrai4
        {
            margin-left:43px;   
         }
         .canbentrai5
        {
            margin-left:48px;   
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border: thin solid #C0C0C0; height: 292px; border-radius:10px">
<div style="text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #0000FF; font-weight: bold;" >
            <br />
                    &nbsp;&nbsp; Detail Message</div>
        <br />
    <asp:Label ID="lblFrom" runat="server" Text="From:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblFrom2" runat="server" Text="Label" CssClass="canbentrai2"></asp:Label>
    </br>
    <asp:Label ID="lblTitle" runat="server" Text="Title:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblTitle2" runat="server" Text="Label" CssClass="canbentrai5"></asp:Label>
    </br>
    <asp:Label ID="lblContent" runat="server" Text="Content:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblContent2" runat="server" Text="Label" CssClass="canbentrai3"></asp:Label>
    </br>
    <asp:Label ID="lblDate" runat="server" Text="Date:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblDate2" runat="server" Text="Label" CssClass="canbentrai4"></asp:Label>
    </div>
</asp:Content>

