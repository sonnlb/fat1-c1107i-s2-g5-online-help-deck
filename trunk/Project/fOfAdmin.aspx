<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fOfAdmin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="btnViewRequest" runat="server" onclick="btnViewRequest_Click" 
                    Text="View Request" />
            </td>
            <td>
                <asp:Button ID="btnViewFeedBack" runat="server" onclick="btnViewFeedBack_Click" 
                    Text="View FeedBack" />
            </td>
            <td>
                <asp:Button ID="btnViewStatistics" runat="server" 
                    onclick="btnViewStatistics_Click" Text="View Statistics" Width="123px" />
            </td>
        </tr>
    </table>
</asp:Content>

