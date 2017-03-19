<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MTimKiemCoBan.ascx.cs" Inherits="Modules_MTimKiemCoBan" %>
<form id="formSearch" runat ="server">
    <center>
        <input id="txtTenBatDongSan" type="text" runat="server" placeholder="Theo Tên Bất Động Sản"/>
        &nbsp 
        <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat ="server" Text="Tìm" OnClick="btnSearch_Click"></asp:Button>
    </center>
</form>