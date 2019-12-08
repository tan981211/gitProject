<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="MyPetShop.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" style="margin-right: 1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowEditButton="true"/>
                    <asp:TemplateField HeaderText="全选">

                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBoxHeader" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"/>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBoxItem" runat="server" AutoPostBack="True" />
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                    <asp:TemplateField HeaderText="商品编号分类">

                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource2" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("CategoryId") %>' AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" TableName="Category" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryId") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>                   
                    <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" ReadOnly="True" SortExpression="UnitCost" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" ReadOnly="True" SortExpression="Qty" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShop.DataClasses1DataContext" EntityTypeName="" Select="new (ProductId, CategoryId, UnitCost, Name, Qty)" TableName="Product"></asp:LinqDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
