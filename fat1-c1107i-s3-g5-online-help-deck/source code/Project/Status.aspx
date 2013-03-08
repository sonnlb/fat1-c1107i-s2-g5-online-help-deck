<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Status1" %>

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
            margin-left:4px;
            margin-right:4px;
            height:26px;
            width:60px;
        }
        .nut:hover
        {
            background-image: url('Image/buttonchange.png');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
        onrowdatabound="GridView1_RowDataBound" 
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="881px" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="Change" CommandName="set" >
            <ControlStyle CssClass="nut" />
            <FooterStyle CssClass="nut" />
            </asp:ButtonField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("requestID") %>' Visible="false" />
                    <asp:DropDownList runat="server" ID="ddTest" AutoPostBack="true" OnSelectedIndexChanged="ddTest_SelectedIndexChanged">
                    </asp:DropDownList>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
</asp:Content>

