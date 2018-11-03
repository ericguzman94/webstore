<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlShoppingCart" runat="server">
    </asp:Panel>
    <asp:SqlDataSource ID="sdsCart" runat="server" ConnectionString="<%$ ConnectionStrings:GarageConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Cart] ([ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (@ClientID, @ProductID, @Amount, @DatePurchased, @IsInCart)" SelectCommand="SELECT * FROM [Cart] ORDER BY [ID], [DatePurchased]" UpdateCommand="UPDATE [Cart] SET [ClientID] = @ClientID, [ProductID] = @ProductID, [Amount] = @Amount, [DatePurchased] = @DatePurchased, [IsInCart] = @IsInCart WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ClientID" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="DatePurchased" Type="DateTime" />
            <asp:Parameter Name="IsInCart" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ClientID" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="DatePurchased" Type="DateTime" />
            <asp:Parameter Name="IsInCart" Type="Boolean" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <table>
            <tr>
                <td class="auto-style1">
                    <b>Total: </b>
                </td>
                <td class="auto-style1">
                    <asp:Literal ID="litTotal" runat="server" Text=""></asp:Literal>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Tax: </b>
                </td>
                <td>
                    <asp:Literal ID="litVat" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Shipping: </b>
                </td>
                <td>
                    $ 5
                </td>
            </tr>

            <tr>
                <td>
                    <b>Total Amount: </b>
                </td>
                <td>
                    <asp:Literal ID="litTotalAmount" runat="server" Text="" />
                </td>
            </tr>

            <tr>
                <td>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Index.aspx">Continue Shopping</asp:LinkButton> &nbsp;&nbsp; or                     
                    <asp:Button ID="btnCheckout" runat="server" Text="Check Out" CssClass="button" Width="250px" PostBackUrl="~/Pages/Billing.aspx" />

                    <br />

                    <asp:LinkButton ID="litPaypal" Text="" runat="server" />
                </td>
            </tr>

        </table>
</asp:Content>

