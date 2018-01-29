using System;
using System.Security.Permissions;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using Microsoft.SharePoint.Workflow;

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

            using (SPSite site = new SPSite("http://devlab.billennium.pl/serwis-prasowy"))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    SPListItem oItem = properties.ListItem;
                    SPList picturesLib = web.Lists["Pictures"];
                    SPFieldLookupValue fieldLookupValue = new SPFieldLookupValue(oItem["Image"].ToString());
                    int imgId = fieldLookupValue.LookupId;

                    var img = picturesLib.Items.GetItemById(imgId);
                    oItem["Title"] = imgId.ToString();
                    oItem["Picture"] = img["URL Path"];
                    oItem.Update();
                }
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