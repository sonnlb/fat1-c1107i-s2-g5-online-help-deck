<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="Request.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
    OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"
        Width="881px">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="set" Text="Set" />
            <asp:TemplateField HeaderText="Employee">
                <ItemTemplate>
                    <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("employeeID") %>' Visible="false" />
                    <asp:DropDownList runat="server" ID="ddTest" AutoPostBack="true" OnSelectedIndexChanged="ddTest_SelectedIndexChanged">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField Visible="False" />
        </Columns>
    </asp:GridView>
</asp:Content>
