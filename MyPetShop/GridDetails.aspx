<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridDetails.aspx.cs" Inherits="MyPetShop.GridDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView DataKeyNames="ProductId" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" >
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    
                    <asp:CommandField ShowSelectButton="True" SelectText="详细资料"/>
                    
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (ProductId, Name)" TableName="Product">
            </asp:LinqDataSource>
            <asp:DetailsView  OnItemCreated="DetailsView1_ItemCreated" OnItemDeleted="DetailsView1_ItemDeleted1" OnItemUpdated="DetailsView1_ItemUpdated1" ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="LinqDataSource2" OnPageIndexChanging="DetailsView1_PageIndexChanging1">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:LinqDataSource  Where="ProductId=@ProductId" ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" TableName="Product" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
            <WhereParameters>
                <asp:ControlParameter  ControlID="GridView1" DefaultValue="1" Name="ProductId" PropertyName="SelectedValue" Type="Int32"/>
            </WhereParameters>
            </asp:LinqDataSource>
            <br />

        </div>
    </form>
</body>
</html>
