<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridMain.aspx.cs" Inherits="MyPetShop.GridMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" style="margin-right: 0px" DataKeyNames="CategoryId">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" ReadOnly="True" SortExpression="Descn" />
                    <asp:HyperLinkField   DataNavigateUrlFields="CategoryId" DataTextField="CategoryId" DataNavigateUrlFormatString="主从表值从表.aspx?cid={0}" HeaderText="CategoryId"/>
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (CategoryId, Name, Descn)" TableName="Category"></asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
