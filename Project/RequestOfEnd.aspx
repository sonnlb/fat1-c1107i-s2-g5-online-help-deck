<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RequestOfEnd.aspx.cs" Inherits="RequestOfEnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        Width="878px">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Close" Text="Close Request" />
        </Columns>
    </asp:GridView>
</asp:Content>

