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
         .nut
        {
            background-image: url('Image/Fof.png');
            border-radius: 3px;
            color:White;
            border: thin solid #660000;
            background-position: right top;
            margin-left:13px;
            margin-right:8px;
            height:28px;
            width:220px;
            font-family:Aharoni;
            }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnChangePass" runat="server" Text="Change Password" 
                    onclick="btnChangePass_Click" CssClass="nut"  />
            </td>
            <td class="style16">
                <asp:Button ID="btnViewRequest" runat="server" Text="View Request" 
                     onclick="btnViewRequest_Click" CssClass="nut" 
                     />
            </td>
            <td>
                <asp:Button ID="btnCreateRequest" runat="server" Text="Create New Request" 
                     onclick="btnCreateRequest_Click" CssClass="nut" 
                    />
            </td>
        </tr>
        
    </table>
</asp:Content>

