<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 322px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style15">
                <asp:Label ID="lblName" runat="server" Text="Your Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="217px"></asp:TextBox>
                <asp:Label ID="lblEror" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblContent" runat="server" Text="Content:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContent" runat="server" Height="160px" TextMode="MultiLine" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                    Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

