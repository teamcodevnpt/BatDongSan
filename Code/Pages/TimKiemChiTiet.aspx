<%@ Page Title="Tìm Kiếm Chi TIết" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="TimKiemChiTiet.aspx.cs" Inherits="Pages_TimKiemChiTiet" %>

<%@ Register Src="~/Modules/MTimKiemChiTiet.ascx" TagPrefix="uc1" TagName="MTimKiemChiTiet" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:MTimKiemChiTiet runat="server" ID="MTimKiemChiTiet" />
</asp:Content>

