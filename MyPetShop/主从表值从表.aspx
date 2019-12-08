<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="主从表值从表.aspx.cs" Inherits="MyPetShop.主从表值从表" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                    <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                    <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" SortExpression="UnitCost" />
                    <asp:BoundField DataField="SuppId" HeaderText="SuppId" SortExpression="SuppId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" TableName="Product"
                 Where="CategoryId=@CategoryId">
                <WhereParameters>
                    <asp:QueryStringParameter  DefaultValue="1"  Type="Int32" Name="CategoryId" QueryStringField="cid"/>
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
