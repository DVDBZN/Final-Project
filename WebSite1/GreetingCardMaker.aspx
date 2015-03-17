<%@ Page Title="Greeting Card Maker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="GreetingCardMaker.aspx.cs" Inherits="GreetingCardMaker" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Greeting Card Maker</h2>
    <form runat="server">
        <div>
            Choose a background color:<br />
            <asp:DropDownList id="lstBackColor" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ControlChanged" Width="194px" Height="33px" /><br />
            Choose a foreground (text) color:<br />
			<asp:dropdownlist ID="lstForeColor" class="form-control" runat="server" Height="33px" Width="194px" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged" /><br /><br />
            Choose a font:<br />
            <asp:DropDownList id="lstFontName" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ControlChanged" Width="194px" Height="33px" /><br /><br />
            Specify a numeric font size:<br />
            <asp:TextBox id="txtFontSize" class="form-control" AutoPostBack="true" runat="server" OnTextChanged="ControlChanged"/><br />
            Choose a border style:<br />
            <asp:RadioButtonList id="lstBorder" class="radio" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ControlChanged" Width="177px" Height="108px" /><br /><br />
            <asp:CheckBox id="chkPicture" AutoPostBack="true" runat="server" Text="Add the Default Picture" OnCheckedChanged="ControlChanged" style="position: relative; top:180px"/><br /><br />
            Enter the greeting text below:<br />
            <asp:TextBox id="txtGreeting" class="form-control" AutoPostBack="true" runat="server" OnTextChanged="ControlChanged" Width="240px" Height="100px" TextMode="MultiLine" /><br /><br />
            <asp:Button id="cmdUpdate" class="btn btn-default" OnCLick="cmdUpdate_Click" runat="server" Width="71px" Height="32px" Text="Update" />
        </div>

        <asp:Panel id="pnlCard" runat="server" Width="339px" Height="481px" HorizontalAlign="Center" style="POSITION: absolute; TOP: 110px; LEFT: 530px"><br />&nbsp;
        <asp:Label id="lblGreeting" runat="server" Width="256px" Height="150px" /><br /><br /><br />
        <asp:Image id="imgDefault" runat="server" Width="212px" Height="160px" />
        </asp:Panel>
    </form>
</asp:Content>
