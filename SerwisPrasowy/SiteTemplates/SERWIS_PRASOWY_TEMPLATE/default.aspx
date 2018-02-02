<%@ Register TagPrefix="WpNs1" Namespace="Visual_Web_Parts.WebParts.SearchNews" Assembly="Visual Web Parts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=703fe7188da1b9ae" %>
<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=14.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral runat="server" Text="<%$Resources:wss,multipages_homelink_text%>" EncodeMethod="HtmlEncode" />
    -
    <SharePoint:ProjectProperty Property="Title" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageImage" runat="server">
    <img src="/_layouts/images/blank.gif" width='1' height='1' alt="" /></asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <label class="ms-hidden">
        <SharePoint:ProjectProperty Property="Title" runat="server" />
    </label>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderTitleAreaClass" runat="server">
    <SharePoint:UIVersionedContent runat="server" UIVersion="<=3">
        <contenttemplate>
		<style type="text/css">
		    td.ms-titleareaframe, .ms-pagetitleareaframe {
		        height: 10px;
		    }

		    div.ms-titleareaframe {
		        height: 100%;
		    }

		    .ms-pagetitleareaframe table {
		        background: none;
		        height: 10px;
		    }
		</style>
	</contenttemplate>
    </SharePoint:UIVersionedContent>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <meta name="CollaborationServer" content="SharePoint Team Web Site" />
    <style type="text/css">
        .s4-nothome {
            display: none;
        }
    </style>
    <script type="text/javascript">
        // <![CDATA[
        var navBarHelpOverrideKey = "WSSEndUser";
        // ]]>
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderSearchArea" runat="server">
    <SharePoint:DelegateControl runat="server"
        ControlId="SmallSearchInputBox" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderLeftActions" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageDescription" runat="server" />
<asp:Content ContentPlaceHolderID="PlaceHolderBodyAreaClass" runat="server">
    <style type="text/css">
        .ms-bodyareaframe {
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <table cellspacing="0" border="0" width="100%">
        <tr class="s4-die">
            <td class="ms-pagebreadcrumb">
                <asp:SiteMapPath SiteMapProvider="SPContentMapProvider" ID="ContentMap" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="ms-webpartpagedescription">
                <SharePoint:ProjectProperty Property="Description" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellpadding="0" cellspacing="0" style="padding: 5px 10px 10px 10px;">
                    <tr>
                        <td valign="top" width="70%">
                            <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="Left" Title="loc:Left">
                                <ZoneTemplate>
                                    <WebPartPages:ContentEditorWebPart runat="server" __MarkupType="xmlmarkup" WebPart="true" __WebPartId="{98A82452-6B0D-4FB5-A51F-AF22B698AE28}">
<WebPart xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/WebPart/v2">
  <Title>Serwis prasowy</Title>
  <FrameType>Default</FrameType>
  <Description>Allows authors to enter rich text content.</Description>
  <IsIncluded>true</IsIncluded>
  <PartOrder>2</PartOrder>
  <FrameState>Normal</FrameState>
  <Height />
  <Width />
  <AllowRemove>true</AllowRemove>
  <AllowZoneChange>true</AllowZoneChange>
  <AllowMinimize>true</AllowMinimize>
  <AllowConnect>true</AllowConnect>
  <AllowEdit>true</AllowEdit>
  <AllowHide>true</AllowHide>
  <IsVisible>true</IsVisible>
  <DetailLink />
  <HelpLink />
  <HelpMode>Modeless</HelpMode>
  <Dir>Default</Dir>
  <PartImageSmall />
  <MissingAssembly>Cannot import this Web Part.</MissingAssembly>
  <PartImageLarge>/_layouts/images/mscontl.gif</PartImageLarge>
  <IsIncludedFilter />
  <ExportControlledProperties>true</ExportControlledProperties>
  <ConnectionID>00000000-0000-0000-0000-000000000000</ConnectionID>
  <ID>g_98a82452_6b0d_4fb5_a51f_af22b698ae28</ID>
  <ContentLink xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
  <Content xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor"><![CDATA[<p>​<img alt="images2.jpg" src="/sites/serwis-prasowy/Lists/Pictures/images2.jpg" style="margin: 5px;"/><br/><br/></p>
<p><span class="ms-rteThemeForeColor-2-0" style="font-size: 14px; font-family: &quot;open sans&quot;, arial, sans-serif; white-space: normal; word-spacing: 0px; text-transform: none; float: none; font-weight: 400; font-style: normal; text-align: justify; orphans: 2; widows: 2; letter-spacing: normal; text-indent: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important;">
Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore 
veritatis et quasi architecto beatae vitae dicta sunt explicabo.</span></p>
<p><span class="ms-rteThemeForeColor-2-0" style="font-size: 14px; font-family: &quot;open sans&quot;, arial, sans-serif; white-space: normal; word-spacing: 0px; text-transform: none; float: none; font-weight: 400; font-style: normal; text-align: justify; orphans: 2; widows: 2; letter-spacing: normal; text-indent: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important;"></span>
&nbsp;</p>]]></Content>
  <PartStorage xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
</WebPart>
                                    </WebPartPages:ContentEditorWebPart>
                                    <WpNs0:ContentByQueryWebPart runat="server" DataSourceID="" HelpMode="Modeless" ChromeType="TitleOnly" SuppressWebPartChrome="False" MissingAssembly="Cannot import this Web Part." PageSize="-1" IsIncludedFilter="" ViewContentTypeId="" IsVisible="True" DataMappingViewFields="{fa564e0f-0c70-4ab9-b863-0177e6ddd247},Text;" Title="Ostatnie newsy" ZoneID="Left" AutoRefresh="False" FrameType="TitleBarOnly" SortByFieldType="DateTime" ManualRefresh="False" ExportControlledProperties="True" ItemStyle="TitleOnly" ID="g_fa5042a5_8f4b_47d9_9d1a_73ef2080ee3e" ShowUntargetedItems="False" ServerTemplate="1097" FrameState="Normal" ListGuid="8dba569c-4908-43ed-b67c-19a42fa3c707" PartOrder="4" ShowWithSampleData="False" AllowHide="True" SortBy="Created" ViewFlag="0" UseSQLDataSourcePaging="True" PartImageLarge="" DataMappings="Title:{fa564e0f-0c70-4ab9-b863-0177e6ddd247},Title,Text;|Description:|ImageUrl:|LinkUrl:|" AllowMinimize="True" AsyncRefresh="False" InitialAsyncDataFetch="False" AutoRefreshInterval="60" Dir="Default" AllowZoneChange="True" PartImageSmall="" GroupStyle="DefaultHeader" IsIncluded="True" EnableOriginalValue="False" DetailLink="" UseCopyUtil="True" Filter1ChainingOperator="Or" WebUrl="~sitecollection" Description="Displays a dynamic view of content from your site." SortByDirection="Desc" ExportMode="All" AllowEdit="True" ConnectionID="00000000-0000-0000-0000-000000000000" AllowConnect="True" Filter2ChainingOperator="Or" ListId="00000000-0000-0000-0000-000000000000" AllowRemove="True" HelpLink="" GroupByDirection="Desc" __MarkupType="vsattributemarkup" __WebPartId="{FA5042A5-8F4B-47D9-9D1A-73EF2080EE3E}" WebPart="true" Height="" Width="">
                                        <DataFields>
                                        </DataFields>
                                        <SampleData>
<dsQueryResponse>
                    <Rows>
                        <Row Title="Item 1" LinkUrl="http://Item1" Group="Group Header" __begincolumn="True" __begingroup="True" />
                        <Row Title="Item 2" LinkUrl="http://Item2" __begincolumn="False" __begingroup="False" />
                        <Row Title="Item 3" LinkUrl="http://Item3" __begincolumn="False" __begingroup="False" />
                    </Rows>
                    </dsQueryResponse></SampleData>
                                        <Xsl>
<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime" exclude-result-prefixes="xsl cmswrt x" > <xsl:import href="/Style Library/XSL Style Sheets/Header.xsl" /> <xsl:import href="/Style Library/XSL Style Sheets/ItemStyle.xsl" /> <xsl:import href="/Style Library/XSL Style Sheets/ContentQueryMain.xsl" /> </xsl:stylesheet></Xsl>
                                    </WpNs0:ContentByQueryWebPart>

                                    <WpNs1:SearchNews runat="server" ID="g_ec83c868_2a4e_4627_bf5a_1a3b0686020e" Description="My Visual WebPart" Title="Szukaj news&#243;w" __MarkupType="vsattributemarkup" __WebPartId="{EC83C868-2A4E-4627-BF5A-1A3B0686020E}" WebPart="true" __designer:IsClosed="false" partorder="6"></WpNs1:SearchNews>

                                </ZoneTemplate>
                            </WebPartPages:WebPartZone>
                            &nbsp;
                        </td>
                        <td>&nbsp;</td>
                        <td valign="top" width="30%">
                            <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="Right" Title="loc:Right">
                                <ZoneTemplate></ZoneTemplate>
                            </WebPartPages:WebPartZone>
                            &nbsp;
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
