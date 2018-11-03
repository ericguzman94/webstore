<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Pages_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="contact-page" style="margin: 0px; padding: 0px 0px 0px 10px; font-size: 23px; font-weight: normal; line-height: 1.15;">Contact Us</h1>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        For questions, comments, or if you are looking for a specific item not available in our store, please contact us using the form below and we will get back to you as soon as possible. We aim to resolve any inquiries within 48 hours. Please visit the Information page for some of our most commonly asked questions.</p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        Name:</p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        <asp:TextBox ID="TextBox1" runat="server" Width="271px"></asp:TextBox>
    </p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        Email:</p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        <asp:TextBox ID="TextBox2" runat="server" Width="269px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    </p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        Content:</p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        <asp:TextBox ID="TextBox3" runat="server" Height="162px" Width="483px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p class="contact-page" style="margin: 0px 0px 1em; padding: 10px 10px 0px; font-size: 14px; letter-spacing: 0px;">
        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click" Text="Submit" PostBackUrl="~/Pages/Thank.aspx" />
    </p>
</asp:Content>

