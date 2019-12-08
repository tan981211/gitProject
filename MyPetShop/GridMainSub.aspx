<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridMainSub.aspx.cs" Inherits="MyPetShop.GridMainSub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" DataKeyNames="CategoryId">
                <Columns>
                    <asp:CommandField ShowSelectButton="true"/>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" ReadOnly="True" SortExpression="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" ReadOnly="True" SortExpression="Descn" />
                    
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (CategoryId, Name, Descn)" TableName="Category"></asp:LinqDataSource>
            
            <asp:GridView ID="GridView2" runat="server" DataSourceID="LinqDataSource2"></asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (ProductId, CategoryId, Name, Descn, Qty)" TableName="Product" Where="CategoryId=@CategoryId">
                <WhereParameters>
                    <asp:ControlParameter ControlId="GridView1" DefaultValue="1" Name="CategoryId" PropertyName="SelectedValue" Type="Int32"/>
                </WhereParameters>
            </asp:LinqDataSource>
            <br />
        </div>
    </form>
</body>
</html>
