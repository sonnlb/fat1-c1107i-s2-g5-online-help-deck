<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="createNewRequest.aspx.cs" Inherits="createNewRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server">
    </asp:ModalPopupExtender>
    <asp:Label id="Message" runat="server"/>
</asp:Content>

