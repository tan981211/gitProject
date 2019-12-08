<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyPetShop.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            每页共显示<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                 </asp:DropDownList>条记录<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" PageSize="2">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" ReadOnly="True" SortExpression="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" ReadOnly="True" SortExpression="Descn" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" ReadOnly="True" SortExpression="Qty" />
                    <asp:BoundField DataField="Image" HeaderText="Image" ReadOnly="True" SortExpression="Image" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" Select="new (ProductId, CategoryId, Name, Descn, Qty, Image)" TableName="Product"></asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
