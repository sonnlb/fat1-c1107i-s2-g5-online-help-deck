<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewStatistics.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" cellpadding="1" cellspacing="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="lblUnassigned" runat="server" Text="Unassigned"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAssigned" runat="server" Text="Assigned"></asp:Label>
            </td>
            <td class="style15">
                <asp:Label ID="lblWorkInProgress" runat="server" Text="Work in progress"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblClosed" runat="server" Text="Closed"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblRejected" runat="server" Text="Rejected"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="linkUnassigned" runat="server" Font-Underline="False" 
                    onclick="linkUnassigned_Click">LinkButton</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="linkAssigned" runat="server" Font-Underline="False" 
                    onclick="linkAssigned_Click">LinkButton</asp:LinkButton>
            </td>
            <td class="style15">
                <asp:LinkButton ID="linkWorkInProgress" runat="server" Font-Underline="False" 
                    onclick="linkWorkInProgress_Click">LinkButton</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="linkClosed" runat="server" Font-Underline="False" 
                    onclick="linkClosed_Click">LinkButton</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="linkRejected" runat="server" Font-Underline="False" 
                    onclick="linkRejected_Click">LinkButton</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="linkTotal" runat="server" Font-Underline="False" 
                    onclick="linkTotal_Click">LinkButton</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

