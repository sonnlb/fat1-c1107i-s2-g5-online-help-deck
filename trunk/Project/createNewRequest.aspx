<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="createNewRequest.aspx.cs" Inherits="createNewRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 401px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style15">
                <asp:Label ID="Label1" runat="server" Text="Type:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlType" runat="server">
                    <asp:ListItem>Sua chua</asp:ListItem>
                    <asp:ListItem>Phan Anh</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblRemark" runat="server" Text="ReMark:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRemark" runat="server" Height="109px" TextMode="MultiLine" 
                    Width="290px"></asp:TextBox>
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

