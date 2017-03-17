<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="QuanTri_DangNhap" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Đăng nhập</title>

    <link href="css\bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome\css\font-awesome.css" rel="stylesheet">

    <link href="css\animate.css" rel="stylesheet">
    <link href="css\style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <h3>Đăng nhập</h3>
            <form class="m-t" role="form" runat="server">
                <div class="form-group">
                    <input type="text" class="form-control" runat="server" id="inputTaiKhoan" placeholder="Tài khoản" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" runat="server" id="inputMatKhau" placeholder="Mật khẩu" required="">
                </div>
                <asp:TextBox ID="txtSolanSai" runat="server" Text="0" CssClass="form-control" Visible="false"></asp:TextBox>
                 <div class="form-group" id="divCaptcha" runat="server">  
                    <div class ="col-md-6 col-xs-12">
                        <input type="text" id="txtCaptcha" runat="server" class="form-control" placeholder="Captcha"/>
                    </div>
                    <div class ="col-md-6 col-xs-12">
                         <img id="imgCaptcha" src="Captcha.aspx" alt="Captcha image" runat="server" style="width:100%"/>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnDangNhap" class="btn btn-primary block full-width m-b" runat="server" Text="Đăng Nhập" OnClick="btnDangNhap_Click"/> 
                </div>
                <a href="#"><small>Quên Mật Khẩu?</small></a>
            </form>
            <p class="m-t"> <small>Được thiết kế bởi nhóm lập trình web <strong>VNPT Bến Tre</strong> &copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js\jquery-3.1.1.min.js"></script>
    <script src="js\bootstrap.min.js"></script>

</body>

</html>
