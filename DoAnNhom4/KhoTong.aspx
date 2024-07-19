<%@ Page Title="" Language="C#" MasterPageFile="~/QuanLySach.Master" AutoEventWireup="true" CodeBehind="KhoTong.aspx.cs" Inherits="DoAnNhom4.KhoTong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="200"/>
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Tác giả: "></asp:Label>
            <b><asp:Label ID="Label3" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label></b>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Đơn giá: "></asp:Label>
            <b><asp:Label ID="Label5" runat="server" Text='<%# Eval("DonGia","{0:0,0}") %>'></asp:Label>
            <br />
            </b>
            <asp:Button ID="Button1" runat="server" Text="Xem Chi Tiết " CommandArgument='<%# Eval("MaSach") %>' OnClick="Button1_Click" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
