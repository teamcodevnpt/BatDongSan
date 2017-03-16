<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Đăng nhập Quản Trị</title>

    <link href="css\bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome\css\font-awesome.css" rel="stylesheet">

    <link href="css\animate.css" rel="stylesheet">
    <link href="css\style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <h3>Welcome to BDS</h3>
            <form class="m-t" role="form" action="Default.aspx">
                <div class="form-group">
                    <input type="text" class="form-control" runat="server" id="inputTaiKhoan" placeholder="Tai khoản" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" runat="server" id="inputMatKhau" placeholder="Mật khẩu" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b" runat="server" id="btnDangNhap" onclick="btnDangNhap_Click">Đăng nhập</button>

                <a href="#"><small>Quên Mật Khẩu?</small></a>
                <%--<p class="text-muted text-center"><small>Do not have an account?</small></p>--%>
                <%--<a class="btn btn-sm btn-white btn-block" href="register.htm">Create an account</a>--%>
            </form>
            <p class="m-t"> <small>Được thiết kế bởi nhóm lập trình web VNPT Bến Tre &copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js\jquery-3.1.1.min.js"></script>
    <script src="js\bootstrap.min.js"></script>

</body>

</html>
