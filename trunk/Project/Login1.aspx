<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login1.aspx.cs" Inherits="Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .left
        {
            text-align: left;
        }
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #3300FF;
            font-size: 16px;
            font-weight: bold;
        }
        .style2
        {
        }
        .style2, h3
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            color: #CC0000;
        }
        .nutbam
        {
            color: #0000CC;
            border: 1px solid #660000;
            font-size: 14px;
            font-weight: bold;
            height: 35px;
            line-height: 35px;
            padding-bottom: 5px;
            border-radius: 5px;
            margin-right: 10px;
            width: 95px;
        }
        .ak
        {
            background-color: #FFFFCC;
            margin-top: 50px;
            border: thin solid #660000;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 5px 5px 5px blue;
            background-image: url('img/login.png');
            background-repeat: no-repeat;
            background-position: right top;
            width: 576px;
        }
        #form2 #dn
        {
            background-image: url(img/login2.png);
            background-repeat: no-repeat;
            padding-left: 35px;
            padding-right: 0px;
            background-position: left center;
        }
        #form2 #nl
        {
            background-image: url(img/undo2.png);
            background-repeat: no-repeat;
            padding-left: 40px;
            background-position: 5px 5px;
        }
        #form2 .otext1
        {
            border-radius: 5px;
            text-align: left;
        }
        #form2 .otext
        {
            border-radius: 5px;
            text-align: left;
        }
        
        .style41
        {
            width: 203px;
        }
        .style40
        {
            width: 180px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            color: #Blue;
        }
        .style42
        {
            width: 203px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            color: #Blue;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[





// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 320px">
        <form id="form2" name="form2" method="post" action="">
        </form>
        <table align="center" border="0" cellpadding="2" cellspacing="2" class="ak" width="250">
            <tr>
                <td align="center" colspan="2">
                    <span class="style1">LOGIN SYSTEM</span>
                </td>
            </tr>
            <tr>
                <td align="right" class="style42">
                    &nbsp;
                </td>
                <td>
                    &nbsp;<asp:Label ID="showma" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style42">
                    Username
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Height="21px"></asp:TextBox>
                    <asp:Label ID="lblLogin" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style42">
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="22px"></asp:TextBox>
                    <asp:Label ID="lblPass" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    &nbsp;
                </td>
                <td>
                    <input id="nmk" checked="checked" name="nmk" type="checkbox" value="Yes" /><span
                        class="style40">Remember password</span>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" class="nutbam" OnClick="btnSubmit_Click"
                        Text="Submit" />
                    <asp:Button ID="btnCancel" runat="server" class="nutbam" Text="Cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
