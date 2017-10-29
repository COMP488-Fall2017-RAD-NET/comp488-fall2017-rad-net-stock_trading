<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="quotes" runat="server">
    
        Please enter ticker symbol:<br />
        <input id="ticker" type="text" runat="server" /><br />
        <asp:Button ID="getQuote" runat="server" Text="Get quote" OnClick="GetQuote_Click" />
    
    </div>
    </form>

    <article class="chart" runat="server">
        <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
        <script>
            new TradingView.widget({
                "width": 500,
                "height": 300,
                "symbol": "AAPL",
                "interval": "D",
                "timezone": "Etc/UTC",
                "theme": "Light",
                "style": "1",
                "locale": "en",
                "toolbar_bg": "#f1f3f6",
                "enable_publishing": false,
                "allow_symbol_change": true,
                "hideideas": true
            });
        </script>
    </article>
</body>
</html>
