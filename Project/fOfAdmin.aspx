<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fOfAdmin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nut
        {
            background-image: url('Image/Fof.png');
            border-radius: 3px;
            color:White;
            border: thin solid #660000;
            background-position: right top;
            margin-left:8px;
            margin-right:8px;
            height:26px;
            width:220px;
            font-family:Aharoni;
        }
        
    .style15
    {
        width: 272px;
    }
    .style16
    {
        width: 304px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style16" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnViewRequest" runat="server" onclick="btnViewRequest_Click" 
                    Text="View Request" CssClass="nut" />
            </td>
            <td class="style15">
                <asp:Button ID="btnViewFeedBack" runat="server" onclick="btnViewFeedBack_Click" 
                    Text="View FeedBack" CssClass="nut" />
            </td>
            <td>
                <asp:Button ID="btnViewStatistics" runat="server" 
                    onclick="btnViewStatistics_Click" Text="View Statistics" 
                    CssClass="nut" />
            </td>
        </tr>
    </table>
</asp:Content>

