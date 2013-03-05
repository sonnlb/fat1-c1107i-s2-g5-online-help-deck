<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

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
        }
        .nut:hover
        {
            background-image: url('Image/buttonchange.png');
        }
        .style15
        {
            width: 363px;
            text-align: right;
            padding-right: 20px;
        }
        .style16
        {
            text-align:right;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border: thin solid #C0C0C0; height: 392px; border-radius:10px">
    <table style="width:100%;">
    <tr>

            <td >
                
            </td>
            <td>
              
            </td>
            
        </tr>
        <tr>

            <td colspan="2" 
                style="text-align: center; font-size: 16px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #0000FF;">
                
                <asp:Label ID="Label2" runat="server" Text="Feedback"></asp:Label>
                
            </td>
            
        </tr>
        <tr>

            <td >
                
            </td>
            <td>
              
            </td>
            
        </tr>
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
                <asp:TextBox ID="txtContent" runat="server" Height="123px" TextMode="MultiLine" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; margin: 5px; padding: 5px">
                <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" 
                    CssClass="nut" />
                <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                    Text="Cancel" CssClass="nut" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

