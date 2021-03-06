<%--
  Created by IntelliJ IDEA.
  User: siege
  Date: 2016-11-01
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
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
                        <a href="report" target="_blank">
                            报表查看</a>
                    </li>
                    <li>
                        <a href="amountdata">
                            加氢量统计</a>
                    </li>
                </ul>
            </li>
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">大连站</span>
                    <!--<span class=""></span>-->
                </a>
            </li>
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">其余站点</span>
                    <!--<span class=""></span>-->
                </a>
            </li>
            <!--
            <li class="start">
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span class="title">安亭站</span>
                    <span class=""></span>
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
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div id="main" style="height:400px"></div>
                </div>
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
<script src="jslib/js/echarts.js"></script>
<script>
    jQuery(document).ready(function () {
        App.init(); // initlayout and core plugins
    });
    var myChart = echarts.init(document.getElementById('main'));

    var app = {};
    option = null;
    function randomData() {
        now = new Date(+now + oneDay);
        value = value + Math.random() * 21 - 10;
        var date=new Date();
        return {
            name: new Date().getHours()+":"+new Date().getMinutes(),
            value: [
                [date.getHours(),date.getMinutes(),date.getSeconds()].join('/'),
                Math.round(value)
            ]
        }
    }

    var data = [];
    var now = +new Date(1997, 9, 3);
    var oneDay = 24 * 3600 * 1000;
    var value = Math.random() * 1000;
    for (var i = 0; i < 10; i++) {
        data.push(Math.random()*10);
    }

    option = {
        title: {
            text: '动态数据 + 时间坐标轴'
        },
       /* tooltip: {
            trigger: 'axis',
            formatter: function (params) {
                params = params[0];
                console.log(params);
                var date = new Date(params.name);
                //return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
            },
            axisPointer: {
                animation: false
            }
        },*/
        xAxis: {
            type: 'category',
            splitLine: {
                show: false
            },
            data: []
        },
        yAxis: {
            type: 'value',
            boundaryGap: [0, '100%'],
            splitLine: {
                show: false
            }
        },
        series: [{
            name: '模拟数据',
            type: 'line',
            showSymbol: false,
            hoverAnimation: false,
            data: data
        }]
    };

    app.timeTicket = setInterval(function () {

        for (var i = 0; i < 2; i++) {
            data.shift();
            data.push(Math.random()*10);
        }
        console.log(data);
        var date=new Date();
        var s1=date.getMinutes()+":"+date.getSeconds();
        var s2=date.getMinutes()+":"+date.getSeconds();
        var s3=date.getMinutes()+":"+date.getSeconds();
        var s4=date.getMinutes()+":"+date.getSeconds();
        var s5=date.getMinutes()+":"+date.getSeconds();
        var s6=date.getMinutes()+":"+date.getSeconds();
        var s7=date.getMinutes()+":"+date.getSeconds();
        var s8=date.getMinutes()+":"+date.getSeconds();
        var s9=date.getMinutes()+":"+date.getSeconds();
        var s10=date.getMinutes()+":"+date.getSeconds();

        myChart.setOption({
            xAxis:{
                data:[s1,s2,s3,s4,s5,s6,s7,s8,s9,s10]
            },
            series: [{
                data: data
            }]
        });
    }, 1000);
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
