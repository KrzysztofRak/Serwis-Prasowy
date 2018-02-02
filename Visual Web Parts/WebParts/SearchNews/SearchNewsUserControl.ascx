<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchNewsUserControl.ascx.cs" Inherits="Visual_Web_Parts.WebParts.SearchNews.SearchNewsUserControl" %>

<asp:TextBox ID="TextBoxSearch" runat="server" Width="322px"></asp:TextBox>
<asp:Button ID="BtnSearch" runat="server" OnClick="BtnSearch_Click" Text="Szukaj" />
<br />
<asp:Label ID="ResultsNum" runat="server" Text="Znalezionych wyników: "></asp:Label>
<asp:Label ID="LblResultNum" runat="server" Text="0"></asp:Label>

<p>
    &nbsp;</p>
<asp:Label ID="LblResults" runat="server"></asp:Label>



