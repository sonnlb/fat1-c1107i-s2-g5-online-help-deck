<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fOfUser.aspx.cs" Inherits="fOfUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 291px;
        }
        .style16
        {
            width: 283px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style15">
                <asp:Button ID="btnChangePass" runat="server" Text="Change Password" 
                    Width="257px" onclick="btnChangePass_Click" />
            </td>
            <td class="style16">
                <asp:Button ID="btnViewRequest" runat="server" Text="View Request" 
                    Width="261px" onclick="btnViewRequest_Click" />
            </td>
            <td>
                <asp:Button ID="btnCreateRequest" runat="server" Text="Create New Request" 
                    Width="245px" onclick="btnCreateRequest_Click" />
            </td>
        </tr>
        
    </table>
</asp:Content>

