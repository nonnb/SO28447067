<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication12._Default" %>

<form runat="server" id="SomeForm">
    
<asp:gridview runat="server" id="GridView1" autogeneratecolumns="false">
        <Columns>
            <asp:TemplateField HeaderText="ServiceID" ItemStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblServiceID" runat="server" Text='<%# Eval("ServiceId")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rate" ItemStyle-Width="70px">
                <ItemTemplate>
                    <asp:Label ID="lblRate" runat="server" Text='<%# Eval("Rate")%>' CssClass="rate"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="txtQty" Text='<%# Eval("Quantity")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="lblTotal" runat="server" CssClass='Total'><%# Eval("Total")%></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:gridview>
</form>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
    $(document).ready(function () {
        $('.txtQty').on('change', function (evt) {
            var $row = $(this).parents('tr');
            var rate = Number($row.find('.rate').text());
            var qty = Number($(this).val());
            var total = rate * qty;
            $row.find('.Total').text(total);
        });
    });
</script>

