<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="Message.aspx.cs" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .nut
        {
            background-image: url('Image/button.png');
            border-radius: 3px;
            color: White;
            border: thin solid #660000;
            background-repeat: no-repeat;
            background-position: right top;
            margin-left: 4px;
            margin-right: 4px;
            height: 26px;
            width: 60px;
        }
        .nut:hover
        {
            background-image: url('Image/buttonchange.png');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Details" Text="Details">
                <ControlStyle CssClass="nut" />
            </asp:ButtonField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="lblMsgID" runat="server" Text="Label" Visible="False"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>
