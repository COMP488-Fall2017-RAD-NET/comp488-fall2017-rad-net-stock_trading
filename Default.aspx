<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>COMP488 RAD.NET Fall 2017</h2>
        <h3>Stock Trading Project Assignment</h3>
        <p class="lead">This is the very beginning of the Stock Trading Web application created using ASP.NET technologies</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h4>Getting started</h4>
            <p>
                This section lets a user to input a ticker symbol at get a current quote
            </p>
            <!-- ticker input article -->
            <article class="get-quote">
                <h5>Type a ticker symbol to get a quote:</h5>
                <input type="text" name="ticker" title="ticker"><br>
                <button>Get quote &raquo;</button>
            </article>

            <!-- output article -->
            <article class="render-quote"></article>
                
            
            
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <script type="text/javascript" src="../scripts/getquote.js"></script>
</asp:Content>
