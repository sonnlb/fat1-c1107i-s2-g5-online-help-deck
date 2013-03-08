<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DetailFeedback.aspx.cs" Inherits="_Default" %>

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
            margin-left:410px;
        }
        .nut:hover
        {
            background-image: url('Image/buttonchange.png');
        }
        .canbentrai
        {
            margin-left:300px;
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
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: thin solid #C0C0C0; height: 292px; border-radius:10px">
        <div style="text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #0000FF; font-weight: bold;" >
            <br />
                    &nbsp;&nbsp; Detail Feedback</div>
        <br />
    <asp:Label ID="lblName" runat="server" Text="From:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblName1" runat="server" Text="Label" CssClass="canbentrai2"></asp:Label>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblEmail1" runat="server" Text="Label" CssClass="canbentrai2"></asp:Label>
    <br />
    <asp:Label ID="lblContent" runat="server" Text="Content:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblContent1" runat="server" Text="Label" CssClass="canbentrai3"></asp:Label>
    <br />
    <asp:Label ID="lblDate" runat="server" Text="Date:" CssClass="canbentrai"></asp:Label>
    <asp:Label ID="lblDate1" runat="server" Text="Label" CssClass="canbentrai4"></asp:Label>
        <br />
    <br />
    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click"
        Text="Delete" CssClass="nut" />
        </div>
</asp:Content>

