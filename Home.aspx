<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </br></br>

    <asp:Button ID="Calculate" runat="server" Text="CHEK SITE STATUS" OnClick="Calculate_Click" Width="223px" BorderColor="Red" BorderStyle="Double" Height="51px" />
    </br></br>
    </asp:Content>

