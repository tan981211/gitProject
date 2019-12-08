<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="MyPetShop.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" ReadOnly="True" SortExpression="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" ReadOnly="True" SortExpression="Descn" />
                    <asp:HyperLinkField  DataNavigateUrlFields="CategoryId"
                         DataNavigateUrlFormatString="结合GridView和独立页面修改数据页面.aspx?cid={0}" Text="修改"/>
                </Columns>
            </asp:GridView>
        </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (CategoryId, Name, Descn)" TableName="Category">
        </asp:LinqDataSource>
    </form>
</body>
</html>
