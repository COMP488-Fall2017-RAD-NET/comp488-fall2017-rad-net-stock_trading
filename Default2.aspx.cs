using Newtonsoft.Json.Linq;
using System;
using System.Runtime.InteropServices;
using System.Threading;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;


public partial class Default2 : System.Web.UI.Page
{
    //protected WebBrowser webBrowser1 = new WebBrowser();
        
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    

    /*Thread t = new Thread();
    t.SetApartmentState(ApartmentState.STA); 
    t.Start(); 
    t.Join();*/

    protected void GetQuote_Click(object sender, EventArgs e)
    {
        // create url
        String url =
            "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(\"" + ticker.Value + "\")&format=json&env=store://datatables.org/alltableswithkeys&callback=";

        // fetch JSON string
        // parse JSON and get ask price
        using (var webClient = new System.Net.WebClient())
        {
            var json = webClient.DownloadString(url);
            JObject o = JObject.Parse(json);

            // render quote
            try
            {
                double ask = (double)o["query"]["results"]["quote"]["Ask"];
                quotes.Controls.Add(new Literal()
                {
                    Text = "<p> Current price of " + ticker.Value + ": $" + ask + "</p>"
                }
                );


                // render chart
                //String src = "\"https://s.tradingview.com/widgetembed/?symbol=" + ticker.Value + "&amp;interval=D&amp;symboledit=1&amp;saveimage=1&amp;toolbarbg=f1f3f6&amp;studies=%5B%5D&amp;hideideas=1&amp;theme=Light&amp;style=1&amp;timezone=Etc%2FUTC&amp;studies_overrides=%7B%7D&amp;overrides=%7B%7D&amp;enabled_features=%5B%5D&amp;disabled_features=%5B%5D&amp;locale=en&amp;utm_source=localhost&amp;utm_medium=widget&amp;utm_campaign=chart&amp;utm_term=" + ticker.Value + "\"";
                //webBrowser1.Document.GetElementsByTagName("iframe")[0].SetAttribute("src", src);

            }
            catch
            {
                Response.Write("<script>alert(\'" + ticker.Value + " ticker symbol not found\')</script>");
            }
        }

        

    }
        
    
}