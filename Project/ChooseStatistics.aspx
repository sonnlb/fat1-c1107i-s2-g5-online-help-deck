<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChooseStatistics.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    function checkDate(sender, args) {
        if (sender._selectedDate > new Date()) {
            alert("You can not select a date greater than today!");
            sender._selectedDate = new Date();
            // set the date back to the current date
            sender._textbox.set_Value(sender._selectedDate.format(sender._format))
        }
    }
    </script>
    <asp:Label ID="lblChoose" runat="server" Text="Choose:"></asp:Label>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <br />
    <asp:Label ID="lblFrom" runat="server" Text="From:"></asp:Label>
    <asp:TextBox ID="txtFrom" runat="server" EnableTheming="True" Height="20px" 
        Width="77px"></asp:TextBox>
    <asp:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtFrom" OnClientDateSelectionChanged="checkDate">
    </asp:CalendarExtender>
    <asp:Label ID="lblTo" runat="server" Text="To:"></asp:Label>
    <asp:TextBox ID="txtTo" runat="server" EnableTheming="True" Height="21px" 
        Width="72px"></asp:TextBox>
    <asp:CalendarExtender ID="txtTo_CalendarExtender" runat="server" Enabled="True" 
        TargetControlID="txtTo" OnClientDateSelectionChanged="checkDate">
    </asp:CalendarExtender>
    <br />
    <asp:Button ID="Button1" runat="server" Text="View" Width="100px" 
        onclick="Button1_Click" />
</asp:Content>

