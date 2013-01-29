<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

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
        #form2 .otext
        {
            border-radius: 5px;
            text-align: left;
        }
        
        
        .style41
        {
            width: 145px;
        }
        .style40
        {
            width: 180px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            color: #CC0000;
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
                    <span class="style1">ĐĂNG NHẬP HỆ THỐNG </span>
                </td>
            </tr>
            <tr>
                <td align="right" class="style40">
                    Tài khoản
                </td>
                <td>
                    <input id="tk" class="otext" maxlength="15" name="tk" size="30" type="text" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style40">
                    Mật khẩu
                </td>
                <td>
                    <input id="pw" class="otext" name="textfield" size="30" type="password" value="" />
                </td>
            </tr>
            <tr>
                <td class="style41">
                    &nbsp;
                </td>
                <td>
                    <input id="nmk" checked="checked" name="nmk" type="checkbox" value="Yes" /><span
                        class="style40">Nhớ mật khẩu</span>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    &nbsp;
                </td>
                <td>
                    <input id="dn" class="nutbam" name="dn" onclick="return dn_onclick()" type="submit"
                        value="Đăng nhập " />
                    <input id="nl" class="nutbam" name="nl" onclick="return nl_onclick()" onclick="return nl_onclick()"
                        type="reset" value=" Nhập lại " />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
