<%@ Page Title="" Language="C#" MasterPageFile="~/QuanLySach.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="DoAnNhom4.ChiTietSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="200"/>
            <b><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label></b>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Tác Giả"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Đơn giá "></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Số lượng "></asp:Label>
            <input id="Text1" type="text" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Mua " />
            <asp:Button ID="Button2" runat="server" Text="Xem giỏ hàng " />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
