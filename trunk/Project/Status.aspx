<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Status1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
        onrowdatabound="GridView1_RowDataBound" 
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="881px">
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="Change" CommandName="set" />
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("requestID") %>' Visible="false" />
                    <asp:DropDownList runat="server" ID="ddTest" AutoPostBack="true" OnSelectedIndexChanged="ddTest_SelectedIndexChanged">
                    </asp:DropDownList>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField Visible="False" />
        </Columns>
    </asp:GridView>
</asp:Content>

