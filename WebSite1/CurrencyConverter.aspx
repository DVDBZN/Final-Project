<%@ Page Title="Currency Converter" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="CurrencyConverter" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Currency Converter</h2>
    <form runat="server" class="form-inline">
        <div class="aspNetHidden">
            <input type="hidden" name="_VIEWSTATE" id="_VIEWSTATE" value="/dDw3NDg2NTI5MDg70z4..." />
        </div>
        <div class="aspNetHidden">
            <input type="hidden" name="_EVENTVALIDATION" id="_EVENTVALIDATION" value="/wEWAwLr3rr0BgLr797..." />
        </div>
        <div>
            Convert:&nbsp;
            <input type="text" class="form-control" ID="US" runat="server"/>
            &nbsp;U.S. dollars to 
            <select id="Currency" class="form-control" runat="server" />
            <br /><br />
            <input type="submit" class="btn btn-info" value="OK" ID="Convert" runat="server" OnServerClick="Convert_ServerClick"/>
            <input type="submit" class="btn btn-info" value="Show Graph" id="ShowGraph" OnServerClick="ShowGraph_ServerClick" runat="server" />
            <br /><br />
            <img id="Graph" src="" alt="Currency Graph" runat="server" />
            <br /><br />
            <p style="font-weight: bold" id="Result" runat="server"></p>
        </div>
     </form>
</asp:Content>
