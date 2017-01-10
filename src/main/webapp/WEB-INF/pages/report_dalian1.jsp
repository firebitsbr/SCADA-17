<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <link rel="stylesheet" href="jslib/css/bootstrap.css">
    <link rel="stylesheet" href="jslib/css/datepicker.css"/>
    <script src="jslib/js/jquery-1.11.2.js"></script>
    <script src="jslib/js/bootstrap.min.js"></script>
    <script src="jslib/js/bootstrap-datepicker.js"></script>
    <style>
        .col-md-4 {
            width: 30%;
        }
        body{
            font:10px/2em "宋体",Arial,Times;
        }
        #paging div {
            float: left;
            line-height: 82px;
            height: 82px;
            text-align: center;
        }

        #paging span {
            float: left;
        }

        #total {
            color: #999;
            margin-left: 10px;
        }

        #pageform {
            color: #404040;
        }

        .text {
            color: #999;
            margin-left: 5px;
            line-height: 82px;
        }

        #pagesubmit {
            height: 21px;
            width: 43px;
            border: solid 1px #ededed;
            margin: 30px 0px 30px 5px;
            background-clip: padding-box;
            border-radius: 2px;
            text-align: center;
            line-height: 21px;
            cursor: pointer;
            color: #404040;
        }

        #pageinput {
            float: left;
            width: 35px;
            height: 21px;
            line-height: 21px;
            text-align: center;
            border: solid 1px #ededed;
            font-size: 100%;
            margin: 30px 0px 30px 5px;
            padding: 0px;
        }

        .dot {
            float: left;
            positive: relative;
            border: none;
            line-height: 37px;
            width: 24px;
            margin-left: -1;
            height: 35;
            text-align: center
        }

        .form-inline .form-group {
            /* margin-right: 250px;
            margin-bottom:20px;  */
            margin-right: auto;
            margin-bottom: 20px;
        }

        select {
            width: 175px;
        }

        form button {
            float: right;
            margin-bottom: 30px !important;
            color: #fff !important;
            background-color: #337ab7 !important;
            margin-right: 40px;
            margin-top: 10px;
        }

        #pagesubmit:hover {
            color: #337ab7;
            border: 1px solid #337ab7;
        }
        #datatable td {
            white-space: nowrap
        }


    </style>
</head>
<body>
<br>

<div class="col-md-8 col-md-offset-2">
    <form class="form-inline" id="queryform">
        <div class="form-group">
            <label class="control-label" for="start_date">开始时间：</label>
            <input type="text" class="form-control" style="margin-right: 80px" id="start_date"/>
        </div>
        <div class="form-group">
            <label class="control-label" for="end_date">结束时间：</label>
            <input type="text" class="form-control" id="end_date"/>
        </div>
        <div  class="form-group">
            <select class="btn btn-default" id="searchType">
                <option value="minute" selected="selected">按分钟</option>
                <option value="hour">按小时</option>
            </select>
        </div>
        <div>
            <button type="submit" class="btn btn-default" id="exportExcel">导出报表</button>
            <button type="submit" class="btn btn-default" id="formsubmit">查询</button>
        </div>
    </form>
</div>


<div id="list"></div>
<div id="example"></div>
</body>
<script type="text/javascript">
    var date = new Date();
    var startDate = new Date(date.getTime() - 604800000);
    $('#start_date').datepicker({
        format: 'yyyy-mm-dd'
    }).show(function () {
        $('#start_date').datepicker('setValue', startDate);
    });

    $('#end_date').datepicker({
        format: 'yyyy-mm-dd'
    }).show(function () {
        $('#end_date').datepicker('setValue', date);
    });
    /**
     * 该方法主要作用是利用jQuery的Ajax从后台获取json数据，其参数num为每次请求获取的页数值
     */
    function getData(num) {
        var start_date = $("#start_date").val();
        var end_date = $("#end_date").val();
        var searchType = $("#searchType").val();
        if (typeof num == 'undefined') {
            num = 1;
        }
        $("#datatable").remove();
        var jqXHR = $.ajax({
            async: false,
            url: 'GetReportDataServlet_Dalian1',
            datatype: 'json',
            type: "post",
            data: {
                'currentPage': num,
                'start_date': start_date,
                'end_date': end_date,
                'searchType':searchType
            },
            'success': function (data) {
                var jsonData = jQuery.parseJSON(data);
                var dataArray = jsonData.data;
                var pageCount = jsonData.pageCount;
                //var currentPage = jsonData.currentPage;
                if (data != null) {
                    var s = '<div class="row" id="datatable">' +
                            '<div class="col-md-9 col-md-offset-1">' +
                            '<table class="table table-hover table-condensed table-bordered table-striped">' +
                            '<thead>' +
                            '<tr>' +
                            /*'<th>序号</th>' +*/
                            '<th>时间</th>' +
                            '<th>加氢机加气质量</th>' +
                            '<th>加氢机环境温度(°C)</th>' +
                            '<th>加氢机瞬时压力(MPa)</th>' +
                            '<th>加氢机瞬时流量</th>' +
                            '<th>加氢机氢气总价</th>' +
                            '<th>加氢机累计加气质量(KG)</th>' +
                            '<th>加氢机终了压力(MPa)</th>' +
                            '<th>加氢机气瓶内初始压力(MPa)</th>' +
                            '<th>加氢机目标压力(MPa)</th>' +
                            '<th>加氢机状态指示</th>' +
                            '<th>发送加氢机指令</th>' +
                            '<th>加氢机累计加氢量(KG)</th>' +
                            '<th>加氢机瞬时压力(BAR)</th>' +
                            '<th>加氢机终了压力(BAR)</th>' +
                            '<th>加氢机气瓶内初始压力(BAR)</th>' +
                            '<th>加氢机目标压力(BAR)</th>' +

                            '<th>发送给压缩机指令字</th>' +
                            '<th>压缩机进气压力(BAR)</th>' +
                            '<th>压缩机排气压力(BAR)</th>' +
                            '<th>排气温度450(°C)</th>' +
                            '<th>润滑油温度450(°C)</th>' +


                            '<th>压缩机进气压力450(BAR)</th>' +
                            '<th>压缩机排气压450(BAR)</th>' +
                            '<th>备用1</th>' +
                            '<th>备用2</th>' +
                            '<th>备用3</th>' +
                            '<th>压缩机进气压力900(BAR)</th>' +
                            '<th>压缩机排气压力900(BAR)</th>' +
                            '<th>排气温度900(°C)</th>' +
                            '<th>润滑油温度900(°C)</th>' +
                            '<th>压缩机进气压力900(BAR)</th>' +
                            '<th>压缩机排气压力900(BAR)</th>' +
                            '</tr>' +
                            '</thead>' +
                            '<tbody>' +
                            '</tbody>' +
                            '</table>' +
                            '</div>' +
                            '</div>';
                    $("#list").append(s);
                    for (var i = 0; i < dataArray.length; i++) {
                        $("#datatable tbody").append(
                                '<tr>' +
                                /*'<td>' + (i + 1) + '</td>' +*/
                                '<td>' + dataArray[i].SHARPTIME + '</td>' +
                                '<td>' + dataArray[i].MH2 + '</td>' +
                                '<td>' + dataArray[i].AT + '</td>' +
                                '<td>' + dataArray[i].Pinst_MPa + '</td>' +
                                '<td>' + dataArray[i].Linst + '</td>' +
                                '<td>' + dataArray[i].COSTH2 + '</td>' +

                                '<td>' + dataArray[i].AMH2 + '</td>' +
                                '<td>' + dataArray[i].Pend_MPa + '</td>' +
                                '<td>' + dataArray[i].P0_MPa + '</td>' +

                                '<td>' + dataArray[i].Ptarget_MPa + '</td>' +
                                '<td>' + dataArray[i].Sjqj35 + '</td>' +

                                '<td>' + dataArray[i].WRITEdispenssor + '</td>' +
                                '<td>' + dataArray[i].AMH2_Calculation35 + '</td>' +
                                '<td>' + dataArray[i].Pinst_bar + '</td>' +
                                '<td>' + dataArray[i].Pend_bar + '</td>' +
                                '<td>' + dataArray[i].P0_bar + '</td>' +
                                '<td>' + dataArray[i].Ptarget_bar + '</td>' +
                                '<td>' + dataArray[i].WRITEcompenssor + '</td>' +
                                '<td>' + dataArray[i].Pin450 + '</td>' +
                                '<td>' + dataArray[i].Pout450 + '</td>' +
                                '<td>' + dataArray[i].Tout450 + '</td>' +
                                '<td>' + dataArray[i].Toil450 + '</td>' +
                                '<td>' + dataArray[i].Pin450_bar + '</td>' +
                                '<td>' + dataArray[i].Pout450_bar + '</td>' +
                                '<td>' + dataArray[i].BY11 + '</td>' +
                                '<td>' + dataArray[i].BY12 + '</td>' +
                                '<td>' + dataArray[i].BY13 + '</td>' +
                                '<td>' + dataArray[i].Pin900 + '</td>' +
                                '<td>' + dataArray[i].Pout900 + '</td>' +
                                '<td>' + dataArray[i].Tout900 + '</td>' +
                                '<td>' + dataArray[i].Toil900 + '</td>' +
                                '<td>' + dataArray[i].Pin900_bar + '</td>' +
                                '<td>' + dataArray[i].Pout900_bar + '</td>' +
                                '</tr>');
                    }
                    ;
                }
            },
            'error': function () {
                alert("请求数据失败，请稍后重试");
            }
        });
        return jqXHR;
    }
    /**
     * 该方法为页码的a标签绑定的事件，其参数obj为单击a标签传过来的原生dom对象
     */
    function changePage(obj, pageCount) {
        var clickObjValue;
        var id;
        if (typeof obj == "object") {
            clickObjValue = obj.innerHTML;
            id = obj.parentNode.id;
        } else {
            clickObjValue = obj;
            id = null;
        }
        var activeLi = $('li[class=active]');
        var activeValue = activeLi.children('a').html();
        if (id == "previous" || id == "next") {
            switch (id) {
                case "previous" :
                    var prevObj = activeLi.prev().children('a');
                    var num = parseInt(prevObj.html());
                    getData(num);
                    createPage(pageCount, num);
                    break;
                case "next":
                    var nextObj = activeLi.next().children('a');
                    var num = parseInt(nextObj.html());
                    getData(num);
                    createPage(pageCount, num);
                    break;
            }
        } else {
            createPage(pageCount, parseInt(clickObjValue));
            activeLi.removeClass();
            getData(parseInt(clickObjValue));
            if (typeof obj == "object") {
                obj.parentNode.setAttribute("class", "active");
            } else {
            }
        }
    }
    function createPage(pageCount, k) {
        var previous = '<li id="previous"><a href="#" aria-label="Previous"><span aria-hidden="true">&lsaquo;上一页</span></a></li>';
        var next = '<li id="next"><a href="#" aria-label="Next"><span aria-hidden="true">下一页&rsaquo;</span></a></li>';
        var page1 = '<li class="active"><a href="#">1</a></li>';
        var page2 = '<li><a href="#">2</a></li>';
        var dot = '<li class="dot">...</li>';
        var commonPage = previous + page1;
        var b = '<div class="row">' +
                '<div class="col-md-5 col-md-offset-3">' +
                '<nav>' +
                '<ul class="pagination">' +
                next +
                '</ul>' +
                '</nav>' +
                '</div>' +
                '<div id="paging">' +
                '<div id="total">共' + pageCount + '页，</div>' +
                '<div  id="pageform">' +
                '<span class="text">到第</span>' +
                '<input id="pageinput" type="number" value=1'/* +(currentPage+1)+ */ + ' min="1" max="100" aria-label="页码输入框">' +
                '<span class="text">页 </span><span id="pagesubmit">确定</span>' +
                '</div>' +
                '</div>' +
                '</div>';

        $('nav').parent().parent().remove();
        $('#example').append(b);

        if (pageCount <= 5) {
            for (var i = 2; i <= pageCount; i++) {
                commonPage = commonPage + '<li><a href="#">' + i + '</a></li>';
            }
        } else {
            if (k < 4) {
                for (var i = 2; i <= 5; i++) {
                    commonPage = commonPage + '<li><a href="#">' + i + '</a></li>';
                }
            } else {
                if (k == 4) {

                } else if (k == 5) {
                    if (pageCount > 6) {
                        commonPage += page2;
                    }
                } else {
                    if (pageCount > 6) {
                        commonPage += page2 + dot;
                    }
                }
                if ((k + 2) < pageCount) {
                    for (var i = k - 2; i < k + 3 && i <= pageCount; i++) {
                        commonPage += '<li><a href="#">' + i + '</a></li>';
                    }
                } else {
                    for (var i = pageCount - 4; (k + 2) >= pageCount && i <= pageCount; i++) {
                        commonPage += '<li><a href="#">' + i + '</a></li>';
                    }
                }
            }
            if (k + 2 < pageCount) {
                commonPage += dot;
            }
        }
        $(commonPage).prependTo('.pagination');
        $($('.pagination li[class="active"]')[0]).removeClass("active");
        $('.pagination a:contains("' + k + '")').parent().addClass("active");
        $(".pagination a").on('click', function () {
            changePage(this, pageCount);
        });
        $("#pagesubmit").on("click", function () {
            var a = $("#pageinput").val();
            changePage(a, pageCount);
        });
        if (k == pageCount) {
            $("#next").addClass("disabled");
            $("#next a").off("click");
        } else if (k == 1) {
            $("#previous").addClass("disabled");
            $("#previous a").off("click");
        }
        if (k == pageCount) {
            k = k - 1;
        }
        $("#pageinput").val(k + 1);
    }
    ;

    function init() {
        var jqXHR = getData(1);
        var dataObj = $.parseJSON(jqXHR.responseText);
        var pageCount = dataObj.pageCount;
        var currentPage = dataObj.currentPage;
        createPage(pageCount, 1);
        return false;
    }
    ;

    $(document).ready(init);
    $("#formsubmit").click(init);
    $("#exportExcel").click(function () {
        var start_date = $("#start_date").val();
        var end_date = $("#end_date").val();
        var searchType = $("#searchType").val();
        window.open("ExportExcelServlet_Dalian1?start_date="+start_date+"&end_date="+end_date+"&searchType="+searchType);
    });

</script>

</html>