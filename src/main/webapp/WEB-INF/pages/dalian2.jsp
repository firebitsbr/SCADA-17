<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <title>舜华能源 | 数据监控系统</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>
    <link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <a class="brand" href="index.jsp">
                <img src="media/image/logo.png" alt="logo"/>
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="media/image/menu-toggler.png" alt=""/>
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav pull-right">
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="media/image/avatar1_small.jpg"/>
                        <span class="username">用户</span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="extra_profile.html"><i class="icon-user"></i> 用户信息</a></li>
                        <li><a href="extra_lock.html"><i class="icon-lock"></i> 锁屏</a></li>
                        <li><a href="login.html"><i class="icon-key"></i> 退出登录</a></li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<div class="page-container">
    <div class="page-sidebar nav-collapse collapse">
        <ul class="page-sidebar-menu">
            <li class="">
                <a href="javascript:;">
                    <i class="icon-cogs"></i>
                    <span class="title">安亭站</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="anting">
                            数据监控</a>
                    </li>
                    <li>
                        <a href="report_anting" target="_blank">
                            报表查看</a>
                    </li>
                    <li>
                        <a href="amount_data_anting">
                            加氢量统计</a>
                    </li>
                </ul>
            </li>
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">大连站1</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="dalian1">
                            数据监控</a>
                    </li>
                    <li>
                        <a href="report_dalian1" target="_blank">
                            报表查看</a>
                    </li>
                    <li>
                        <a href="amount_data_dalian1">
                            加氢量统计</a>
                    </li>
                </ul>
            </li>
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">大连站2</span>
                    <span class=""></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="dalian2">
                            数据监控</a>
                    </li>
                    <li>
                        <a href="report_dalian2" target="_blank">
                            报表查看</a>
                    </li>
                    <li>
                        <a href="amount_data_dalian2">
                            加氢量统计</a>
                    </li>
                </ul>
            </li>
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">云浮站</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="yunfu">
                            数据监控</a>
                    </li>
                    <li>
                        <a href="report_yunfu" target="_blank">
                            报表查看</a>
                    </li>
                    <li>
                        <a href="amount_data_yunfu">
                            加氢量统计</a>
                    </li>
                </ul>
            </li>
            <!--
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">安亭站</span>
                    <!--<span class=""></span>
                </a>
            </li>
            <li class="last">
                <a href="charts.html">
                    <i class="icon-bar-chart"></i>
                    <span class="title">图表信息</span>
                </a>
            </li>-->
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="color-panel hidden-phone">
                        <div class="color-mode-icons icon-color"></div>
                        <div class="color-mode-icons icon-color-close"></div>
                        <div class="color-mode">
                            <p>主题颜色</p>
                            <ul class="inline">
                                <li class="color-black current color-default" data-style="default"></li>
                                <li class="color-blue" data-style="blue"></li>
                                <li class="color-brown" data-style="brown"></li>
                                <li class="color-purple" data-style="purple"></li>
                                <li class="color-grey" data-style="grey"></li>
                                <li class="color-white color-light" data-style="light"></li>
                            </ul>
                            <label>
                                <span>布局</span>
                                <select class="layout-option m-wrap small">
                                    <option value="fluid" selected>流式布局</option>
                                    <option value="boxed">盒式布局</option>
                                </select>
                            </label>
                            <label>
                                <span>底部</span>
                                <select class="footer-option m-wrap small">
                                    <option value="fixed">固定</option>
                                    <option value="default" selected>默认</option>
                                </select>
                            </label>
                        </div>
                    </div>
                    <h3 class="page-title">
                        安亭站
                        <small>站点示意图</small>
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="index.jsp">Home</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li><a href="#">安亭站</a></li>
                    </ul>
                </div>
            </div>
            <div id="dashboard">
                <div class="row-fluid">
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                    </div>
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat green"></div>
                    </div>
                    <div class="span3 responsive" data-tablet="span6  fix-offset" data-desktop="span3">
                    </div>
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat yellow"></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row-fluid">
                <img src="media/image/station.png" id="station_img">
                <canvas id="mycanvas">Your browser does not support the HTML5 canvas tag.</canvas>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="footer-inner">
        Copyright©2016 SUNWISE.SH.CN. All Rights Reserved. <a target="_blank" href="http://www.sunwise.sh.cn/">上海舜华新能源系统有限公司</a>版权所有.
    </div>
    <div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
    </div>
</div>
<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="media/js/bootstrap.min.js" type="text/javascript"></script>
<script src="media/js/app.js" type="text/javascript"></script>
<script>
    function showData() {
        $.ajax({
            url: 'GetDataServlet_Anting',
            type: 'POST',
            'success': function (data) {
                var dataJson = jQuery.parseJSON(data);
                var dataArray = dataJson.data;
                var canvas = document.getElementById("mycanvas");
                var img = document.getElementById("station_img");
                canvas.width = img.width;
                canvas.height = img.height;
                var context = canvas.getContext("2d");
                context.scale(0.71, 0.71);
                context.drawImage(img, 0, 0);
                context.font = "23px Microsoft YaHei";
                context.fillText(dataArray["ATD_102"] + "%", 300, 40);
                context.fillText(dataArray["ATD_101"] + "%", 300, 100);
                context.fillText(dataArray["COMPRESSOR_P"] + " Bar", 530, 90);
                context.fillText(dataArray["CP10A_P"] + " Bar", 710, 150);
                context.fillText(dataArray["CP10A_T"] + " ℃", 780, 240);
                context.fillText(dataArray["T852_P"] + " Bar", 880, 240);
                context.fillText(dataArray["T853_P"] + " Bar", 880, 430);
                context.fillText(dataArray["CP10B_T"] + " ℃", 800, 430);
                context.fillText(dataArray["CP10B_P"] + " Bar", 720, 435);
                context.fillText(dataArray["ATD_105"] + "% ", 710, 510);
                context.fillText(dataArray["ATD_103"] + "% ", 1090, 90);
                context.fillText(dataArray["HE109_T"] + "℃", 100, 270);
                context.fillText(dataArray["AI014"] + "℃", 980, 480);
                context.fillText(dataArray["AI016"] + "MPa", 1050, 480);
                context.fillText(dataArray["AI011"] + "KG/MIN ", 1140, 480);
                context.fillText(dataArray["AI013"] + "℃", 970, 580);
                context.fillText(dataArray["AI015"] + "MPa", 1040, 580);
                context.fillText(dataArray["AI05"] + "KG/MIN ", 1130, 620);
                $("#station_img").css('display', 'none');
            },
            'error': function (data) {

            }
        });


    }

    jQuery(document).ready(function () {
        showData();
        App.init(); // initlayout and core plugins
    });
    var i = 0
    setInterval(function () {
        showData();
    }, 5000)
</script>
</body>
</html>
