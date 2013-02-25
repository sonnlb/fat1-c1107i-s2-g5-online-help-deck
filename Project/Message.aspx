<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Details" Text="Details" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="lblMsgID" runat="server" Text="Label" Visible="False"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

