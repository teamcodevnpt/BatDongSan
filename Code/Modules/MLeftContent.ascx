<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MLeftContent.ascx.cs" Inherits="Modules_MLeftContent" %>
<%@ Register Src="~/Modules/MTimKiemCoBan.ascx" TagPrefix="uc1" TagName="MTimKiemCoBan" %>
<%@ Register Src="~/Modules/MHoTroTrucTuyen.ascx" TagPrefix="uc1" TagName="MHoTroTrucTuyen" %>
<%@ Register Src="~/Modules/MFanPage.ascx" TagPrefix="uc1" TagName="MFanPage" %>
<%@ Register Src="~/Modules/MThongKeTruyCap.ascx" TagPrefix="uc1" TagName="MThongKeTruyCap" %>





<div class="panel panel-primary">
    <div class="panel-heading" style="text-align: center; font-weight: bold">Tìm kiếm cơ bản</div>
    <div class="panel-body">
        <uc1:MTimKiemCoBan runat="server" ID="MTimKiemCoBan" />
    </div>
</div>
<div class="panel panel-primary">
    <div class="panel-heading" style="text-align: center; font-weight: bold">Hỗ trợ trực tuyến</div>
    <div class="panel-body">
        <uc1:MHoTroTrucTuyen runat="server" ID="MHoTroTrucTuyen" />
    </div>
</div>
<div id="fixtop"></div>
<div id="ontop" style="position: relative;">
    <div class="panel panel-primary">
        <div class="panel-heading" style="text-align: center">Fanpage Facebook</div>
        <div class="panel-body">
            <uc1:MFanPage runat="server" ID="MFanPage" />
        </div>
    </div>
</div>
<div class="panel panel-primary">
    <div class="panel-heading" style="text-align: center; font-weight: bold">THỐNG KÊ TRUY CẬP</div>
    <div class="panel-body">
        <uc1:MThongKeTruyCap runat="server" ID="MThongKeTruyCap" />
    </div>
</div>
