using System;
using System.Security.Permissions;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using Microsoft.SharePoint.Workflow;
using System.Collections.Specialized;

namespace SerwisPrasowy.EventReceivers.NewsListItems
{
    /// <summary>
    /// List Item Events
    /// </summary>
    public class NewsListItems : SPItemEventReceiver
    {
        /// <summary>
        /// An item was added.
        /// </summary>
        public override void ItemAdded(SPItemEventProperties properties)
        {
            base.ItemAdded(properties);

            using (SPSite site = new SPSite("http://devlab.billennium.pl/sites/serwis-prasowy"))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    SPListItem oItem = properties.ListItem;
                    SPList picturesLib = web.Lists["Pictures"];
                    SPFieldLookupValue fieldLookupValue = new SPFieldLookupValue(oItem["Image"].ToString());
                    int imgId = fieldLookupValue.LookupId;

                    var img = picturesLib.Items.GetItemById(imgId);
                    oItem["Picture"] = img["URL Path"];
                    oItem.Update();

                    SPFieldLookupValueCollection categories = new SPFieldLookupValueCollection(oItem["Category"].ToString());

                    string selectedCategories = "";

                    foreach (SPFieldLookupValue cat in categories)
                        selectedCategories += cat.LookupValue + ", ";

                    selectedCategories = selectedCategories.Remove(selectedCategories.Length - 2);

                    string title = oItem["Title"].ToString();
                    string body = "Witaj BLABLA, <br><br>" + "W naszym serwisie właśnie pojawił się news z kategorii \"" + selectedCategories + "\", pod tytułem: "
                                     + "\"" + oItem["Title"] + "\".<br><br>Aby zapoznać się z treścią newsa przejdź do: http://devlab.billennium.pl/sites/serwis-prasowy/Lists/News/DispForm.aspx?ID=" + oItem.ID;
                    SendMail(web, "newsletter@serwisprasowy.pl", "krzysztof.rak.1995@gmail.com", title, body);
                }
            }
        }

        public void SendMail(SPWeb web, string from, string to, string subject, string body)
        {
            try
            {
                StringDictionary headers = new StringDictionary();
                headers.Add("from", from);
                headers.Add("to", to);
                headers.Add("subject", subject);
                headers.Add("content-type", "text/html");
                SPUtility.SendEmail(web, headers, body);
            }
            catch
            {
                return;
            }
        }

        public override void ItemAdding(SPItemEventProperties properties)
        {
            base.ItemAdding(properties);


        }

        /// <summary>
        /// An item was updated.
        /// </summary>
        public override void ItemUpdated(SPItemEventProperties properties)
        {
            base.ItemUpdated(properties);
        }


    }
}