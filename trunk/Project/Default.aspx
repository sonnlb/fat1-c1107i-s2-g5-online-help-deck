<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            
            background-color:Black;
            }
    .Background
    {
        
        border:3px solid #dedede;
        background:#fff;    
        }
        .Panel
        {
            padding:10px;
        border:#dedede;
            }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:PopupControlExtender ID="PopupControlExtender1" runat="server"
        TargetControlID="Button1" Position = "Center" PopupControlID="Panel1" CommitProperty="value" 
        >
        </asp:PopupControlExtender>
        <asp:Panel ID="Panel1" runat="server" CssClass="Panel" Height="264px" 
            Width="354px">
            <asp:TextBox ID="txtReson" runat="server" Height="130px" Width="241px" 
                TextMode="MultiLine"></asp:TextBox><br>
            <asp:Label ID="lblReson" runat="server" ForeColor="Red" 
                Text="Please enter reason!!!"></asp:Label>
            
            <br />
            <asp:Button ID="btnOK" runat="server" Text="OK" Width="88px" 
                onclick="btnOK_Click" />
            <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                Text="Cancel" Width="85px" />
            <br></br>
            </br>
            
        </asp:Panel>
    
        
    </div>
    </form>
</body>
</html>

