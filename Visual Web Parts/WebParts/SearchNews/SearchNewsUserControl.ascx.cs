using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Visual_Web_Parts.WebParts.SearchNews
{
    public partial class SearchNewsUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            LblResults.Text = "";
            LblResultNum.Text = "";

            SPWeb web = SPContext.Current.Web;
            SPList newsList = web.Lists["News"];

            SPQuery myQuery = new SPQuery();
            myQuery.Query = "<Where><Contains><FieldRef Name=\"Content\" /><Value Type=\"Note\">" + TextBoxSearch.Text + "</Value></Contains></Where><OrderBy><FieldRef Name=\"Created\" Ascending=\"False\" /></OrderBy>";

            SPListItemCollection queryResult = newsList.GetItems(myQuery);
            LblResultNum.Text = queryResult.Count.ToString();
            foreach (SPListItem itm in queryResult)
            {
                LblResults.Text += "<a href=\"/sites/serwis-prasowy/Lists/News/DispForm.aspx?ID=" + itm.ID + "\">" + itm.Title + "</a><br/>";
            }
        }
    }
}
