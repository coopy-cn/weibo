﻿<!DOCTYPE html>
    <html>
    <head>
        <link href="css/BigData.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="css/index01.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js"></script>
        <link href="js/bstable/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="js/bstable/css/bootstrap-table.css" rel="stylesheet" type="text/css"/>
        <link href="css/Security_operation.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="js/artDialog/skins/default.css" type="text/css"/>
        <script src="js/laydate.js"></script>
        <script src="js/Home_page.js"></script>
        <meta charset="UTF-8">
        <title>舆情分析系统</title>

    </head>
    <body>
    <div class="data_bodey">
        <div class="index_nav">
            <ul style="height: 30px; margin-bottom: 0px;">
                <li class="l_left total_chose_fr nav_active">实时监测</li>
                <li class="l_left total_chose_pl">统计分析一</li>
                <li class="l_left total_chose_pl">统计分析二</li>
                <li class="r_right total_chose_pl">统计分析三</li>
                <li class="r_right total_chose_pl">统计分析四</li>
                <li class="r_right total_chose_pl">统计分析五</li>
            </ul>
            <div class="total_chose_box" style="display: none;">
                <div style="height: 32px;"></div>
                <span class="chose_tltle">请选择年份：</span>
                <select class="year_chose">
                    <option>2017</option>
                    <option>2016</option>
                    <option>2015</option>
                    <option>2014</option>
                    <option>2013</option>
                    <option>2012</option>
                </select>
                <span class="chose_tltle">请输入月份：</span>
                <input class="chose_text_in">
                <span class="chose_tltle">请选择区域：</span>
                <select class="year_chose">
                    <option> 北京市</option>
                    <option>自贡市</option>
                    <option>攀枝花市</option>
                    <option>泸州市</option>
                    <option>德阳市</option>
                    <option>绵阳市</option>
                    <option>广元市</option>
                    <option>遂宁市</option>
                    <option>内江市</option>
                    <option>乐山市</option>
                    <option>南充市</option>
                    <option>宜宾市</option>
                    <option>广安市</option>
                    <option>达州市</option>
                    <option>巴中市</option>
                    <option>雅安市</option>
                    <option>眉山市</option>
                    <option>资阳市</option>
                    <option>阿坝州</option>
                    <option>甘孜州</option>
                    <option>凉山州</option>
                </select>
                <button class="chose_enter">确定</button>
            </div>
            <div class="clear"></div>
        </div>
        <div class="index_tabs">
            <!--安防运作-->
            <div class="inner" style="height: 109%;">

                <div class="left_cage">
                    <div class="dataAllBorder01 cage_cl" style="margin-top: 9% !important; height: 24%;">
                        <video autoplay="autoplay" loop="loop" class="dataAllBorder02 video_cage" controls="controls">
                            <source class="video" title="主监控位" src="video/Epidemic.mov"/>
                        </video>
                    </div>
                    <div class="dataAllBorder01 cage_cl" style="margin-top: 1.5% !important; height: 38%;">
                        <div class="dataAllBorder02 video_cage">
                            <img class="video_around video_around_chose" src="video/video.png">
                            <img class="video_around" src="video/video4.png">
                            <img class="video_around" src="video/video2.png">
                            <img class="video_around" src="video/video3.png">
                            <!--<video autoplay="autopl" loop="loop" class="video_around video_around_chose" title="循环监控01" style="margin-right: 1%; margin-bottom: 1%">-->
                            <!--<source class="video" title="主监控位" src="video/Epidemic.jpg"/>-->
                            <!--</video>-->
                            <!--<video autoplay="autoplay" loop="loop"  class="video_around" title="循环监控02"  style="margin-bottom: 1%">-->
                            <!--<source class="video" title="主监控位" src="video/test_mv03.mov"/>-->
                            <!--</video>-->
                            <!--<video autoplay="autoplay" loop="loop"  class="video_around" title="循环监控03" style="margin-right: 1%">-->
                            <!--<source class="video" title="主监控位" src="video/test_mv03.mov"/>-->
                            <!--</video>-->
                            <!--<video autoplay="autoplay" loop="loop"  class="video_around" title="循环监控04">-->
                            <!--<source class="video" title="主监控位" src="video/test_mv05.mov"/>-->
                            <!--</video>-->
                        </div>
                    </div>
                    <div class="dataAllBorder01 cage_cl"
                         style="margin-top: 1.5% !important; height: 32%; position: relative;">ay
                        <div class="dataAllBorder02" style="padding: 1.2%; overflow: hidden">

                            <div class="message_scroll_box">
                                <div class="message_scroll">
                                    <div class="scroll_top">
                                        <span class="scroll_title">疫情新闻</span>
                                        <span class="scroll_level scroll_level01">二级</span>
                                        <a class="localize"></a>
                                        <span class="scroll_timer">${newslist[0].pubDateStr}</span>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_title">央视新闻app</a>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_msg">${newslist[0].title} </a>
                                    </div>
                                </div>
                                <div class="message_scroll">
                                    <div class="scroll_top">
                                        <span class="scroll_title">疫情新闻</span>
                                        <span class="scroll_level scroll_level03">三级</span>
                                        <a class="localize"></a>
                                        <span class="scroll_timer">${newslist[1].pubDateStr}</span>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_title">央视新闻app</a>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_msg">${newslist[1].title}</a>
                                    </div>
                                </div>
                                <div class="message_scroll">
                                    <div class="scroll_top">
                                        <span class="scroll_title">疫情新闻</span>
                                        <span class="scroll_level scroll_level02">二级</span>
                                        <a class="localize"></a>
                                        <span class="scroll_timer">${newslist[2].pubDateStr}</span>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_title">央视新闻app</a>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_msg">${newslist[2].title}</a>
                                    </div>
                                </div>
                                <div class="message_scroll">
                                    <div class="scroll_top">
                                        <span class="scroll_title">疫情新闻</span>
                                        <span class="scroll_level scroll_level01">二级</span>
                                        <a class="localize"></a>
                                        <span class="scroll_timer">${newslist[3].pubDateStr}</span>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_title">央视新闻app</a>
                                    </div>
                                    <div class="msg_cage">
                                        <a class="localize_msg">${newslist[3].title}</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="scroll_tool_outbox">
                            <div class="scroll_tool_box">
                                <a class="scroll_tool" href="#">查看历史推送</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="center_cage">
                    <div class="dataAllBorder01 cage_cl"
                         style="margin-top: 3.5% !important; height: 62.7%; position: relative;">
                        <div class="dataAllBorder02" style="position: relative; overflow: hidden;">
                            <!--标题栏-->
                            <div class="map_title_box" style="height: 6%">
                                <div class="map_title_innerbox">
                                    <div class="map_title">实时地图</div>
                                </div>
                            </div>
                            <div class="map" id="map"></div>
                            <!--地图显示信息选择-->
                            <div class="display_type_box display_box" style="display: none;overflow:auto">
                                <div class="display_type_center_box">
                                    <ul class="display_type_inner_box" id="layerList">
                                        <li class="display_type_msg"><input id="zt_4" type="checkbox"
                                                                            class="display_type_chose"/> 危化品企业
                                        </li>
                                        <li class="display_type_msg"><input id="zt_1" type="checkbox"
                                                                            class="display_type_chose"/>仓库
                                        </li>
                                        <li class="display_type_msg"><input id="zt_5" type="checkbox"
                                                                            class="display_type_chose"/>学校
                                        </li>
                                        <li class="display_type_msg"><input id="zt_6" type="checkbox"
                                                                            class="display_type_chose"/>医疗卫生
                                        </li>
                                        <li class="display_type_msg"><input id="zt_2" type="checkbox"
                                                                            class="display_type_chose"/>加油站
                                        </li>
                                        <li class="display_type_msg"><input id="zt_0" type="checkbox"
                                                                            class="display_type_chose"/>停车场
                                        </li>
                                        <li class="display_type_msg"><input id="zt_3" type="checkbox"
                                                                            class="display_type_chose"/>派出所
                                        </li>
                                        <li class="display_type_msg"><input id="zt_7" type="checkbox"
                                                                            class="display_type_chose"/>应急避难场所
                                        </li>
                                        <li class="display_type_msg">----------------------------------</li>
                                        <li class="display_type_msg"><input id="zt_14" type="checkbox"
                                                                            class="display_type_chose"/>危化品运输车辆
                                        </li>
                                        <li class="display_type_msg"><input id="zt_11" type="checkbox"
                                                                            class="display_type_chose"/>监控设备
                                        </li>
                                        <li class="display_type_msg"><input id="zt_13" type="checkbox"
                                                                            class="display_type_chose"/>巡逻警员
                                        </li>
                                        <li class="display_type_msg"><input id="zt_12" type="checkbox"
                                                                            class="display_type_chose"/>巡逻警车
                                        </li>
                                    </ul>
                                </div>
                                <div class="display_type_funct_box">
                                    <span class="display_type_funct display_type_funct_sure">确定</span>
                                </div>
                            </div>
                            <!--城市选择-->
                            <div class="city_chose_box display_box" style="display: none">
                                <div class="display_type_center_box">
                                    <ul class="display_type_inner_box" id="ulCity">
                                        <li class="display_type_msg"> 北京市</li>
                                        <li class="display_type_msg">自贡市</li>
                                        <li class="display_type_msg">攀枝花市</li>
                                        <li class="display_type_msg">泸州市</li>
                                        <li class="display_type_msg">德阳市</li>
                                        <li class="display_type_msg">绵阳市</li>
                                        <li class="display_type_msg">广元市</li>
                                        <li class="display_type_msg">遂宁市</li>
                                        <li class="display_type_msg">内江市</li>
                                        <li class="display_type_msg">乐山市</li>
                                        <li class="display_type_msg">南充市</li>
                                        <li class="display_type_msg">宜宾市</li>
                                        <li class="display_type_msg">广安市</li>
                                        <li class="display_type_msg">达州市</li>
                                        <li class="display_type_msg">巴中市</li>
                                        <li class="display_type_msg">雅安市</li>
                                        <li class="display_type_msg">眉山市</li>
                                        <li class="display_type_msg">资阳市</li>
                                        <li class="display_type_msg">阿坝州</li>
                                        <li class="display_type_msg">甘孜州</li>
                                        <li class="display_type_msg">凉山州</li>
                                    </ul>
                                </div>
                                <div class="display_type_funct_box">
                                    <span class="display_type_funct display_type_funct_sure">确定</span>
                                </div>
                            </div>
                            <!--轨迹回放-->
                            <div class="trajectory_box" style="display: none" id="divRouteReview">
                                <input class="trajectory" id="start" placeholder="开始时间">
                                <input class="trajectory" id="end" placeholder="结束时间">
                                <select class="ratio">
                                    <option>1倍</option>
                                    <option>2倍</option>
                                    <option>3倍</option>
                                </select>
                                <button class="playback" onclick="showRoute()">回放</button>
                                <button class="playback close_playback">关闭</button>
                            </div>
                            <!--缓冲区设置-->
                            <div class="trajectory_box" style="display: none" id="divBufferSetting">
                                <button class="playback" style="width:60px" onclick="setBufferCenter()">设置点</button>
                                <input class="trajectory" id="txtBufferX" placeholder="坐标X">
                                <input class="trajectory" id="txtBufferY" placeholder="坐标Y">
                                <input value="10" class="trajectory" id="txtBufferDis" placeholder="缓冲距离">
                                <select class="ratio">
                                    <option>米</option>
                                    <option>千米</option>
                                </select>
                                <button class="playback" onclick="executeBuffer();edit()" style="width:60px">分析</button>
                                <button class="playback close_playback">关闭</button>
                            </div>

                            <!--地图工具栏-->
                            <div class="map_tool_outbox">
                                <span class="map_tool" onclick="zoomFull()">
                                        <a class="map_tool_inner" title="全图"></a>
                                </span>
                                <span class="map_tool" onclick="zoomOut()">
                                        <a class="map_tool_inner" title="放大" style="background-position-x:-36px"></a>
                                    </span>
                                <span class="map_tool" onclick="zoomIn()">
                                        <a class="map_tool_inner" title="缩小" style="background-position-x:-72px"></a>
                                    </span>
                                <span class="map_tool" onclick="showHeatMap()">
                                        <a class="map_tool_inner" title="倒退视图" style="background-position-x:-108px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner" title="前进视图" style="background-position-x:-144px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner display_type_btn" title="专题地图"
                                           style="background-position-x:-180px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner city_chose_btn" title="城市定位"
                                           style="background-position-x:-432px"></a>
                                    </span>
                                <span class="map_tool" id="btnBuffer">
                                        <a class="map_tool_inner" title="缓冲区分析"
                                           style="background-position-x:-216px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner addition_check_btn check_btn" title="地址检索"
                                           style="background-position-x:-252px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner chemistry_check_btn check_btn"
                                           onclick="chemistryCheck()"
                                           title="危化品检索" style="background-position-x:-288px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner enterprise_check_btn check_btn"
                                           onclick="enterpriseCheck()"
                                           title="企业检索" style="background-position-x:-324px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner car_check_btn check_btn" onclick="carCheck()"
                                           title="车辆检索"
                                           style="background-position-x:-360px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner" onclick="Search()" title="搜索"
                                           style="background-position-x:-468px"></a>
                                    </span>
                                <span class="map_tool">
                                        <a class="map_tool_inner" onclick="cancel()" id="fresh_tool" title="清空"
                                           style="background-position-x:-396px"></a>
                                    </span>
                                <span class="map_tool">
                                   <input type="text" id="txtCoord" style="width:150px;visibility:hidden"/>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="dataAllBorder01 cage_cl" style="margin-top: 0.6% !important; height: 32.1%;">
                        <div class="dataAllBorder02" id="map_title_innerbox">
                            <div class="map_title_box">
                                <div class="map_title_innerbox">
                                    <div class="map_title" style="background-image: url(img/second_title.png);">中国疫情每日数据
                                    </div>
                                </div>
                                <div>
                                    <select id="selLayer" style="width:100px;">
                                        <option value="">国内</option>
                                        <option value="">国外</option>
                                    </select>
                                </div>
                            </div>
                            <table id="table" style="width: 100%"></table>
                        </div>

                        <div class="dataAllBorder02" id="map_title_innerbox1"
                             style="    display: none; position: relative;">
                            <div class="map_title_box">
                                <div class="map_title_innerbox">
                                    <div class="map_title" style="background-image: url(img/second_title.png);">
                                        事件详情
                                    </div>
                                </div>
                            </div>
                            <ul class="tab_msg_box">
                                <li class="tab_msg tab_msg01 tab_msg_current">详情页</li>
                            <#--<li class="tab_msg tab_msg02">xxx</li>-->
                            </ul>
                            <div class="table1">
                                <table id="table1" style="width: 100%"></table>
                            </div>
                            <div class="table2" style=" display: none;">
                                <table id="table2" style="width: 100%;"></table>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="right_cage">
                    <!--顶部切换位置-->
                    <div class="dataAllBorder01 cage_cl" style="margin-top: 9% !important; height: 24%">
                        <div class="dataAllBorder02" id="cage_cl">
                            <div class="analysis" style="text-align: center">全球疫情数据统计：</div>
                            <ul class="depart_number_cage">
                                <li class="depart_name">全球确诊人数：</li>
                                <li class="depart_number">${globalStatistics.confirmedCount}</li>
                            </ul>
                            <div class="depart_number_box">
                                <ul class="depart_number_cage">
                                    <li class="depart_name">现存确诊人数：</li>
                                    <li class="depart_number">${globalStatistics.currentConfirmedCount}</li>
                                </ul>
                                <ul class="depart_number_cage">
                                    <li class="depart_name">累计治愈人数：</li>
                                    <li class="depart_number">${globalStatistics.curedCount}</li>
                                </ul>
                                <ul class="depart_number_cage" style="margin-bottom: 0px;">
                                    <li class="depart_name">累计死亡人数：</li>
                                    <li class="depart_number">${globalStatistics.deadCount}</li>
                                </ul>
                                <ul class="depart_number_cage" style="margin-bottom: 0px;">
                                    <li class="depart_name">新增治愈人数：</li>
                                    <li class="depart_number">${globalStatistics.curedIncr}</li>
                                </ul>
                            </div>
                        </div>
                        <div class="dataAllBorder02 over_hide" id="cage_cl1" style="display: none">
                            <div class="analysis">点位基础信息：</div>
                            <ul class="location_msg_box">
                                <li class="location_msg01 location_single">事件级别：<a href="#"
                                                                                   style="color: #dc0000;">二级</a>
                                </li>
                                <li class="location_msg02 location_single">事件级别：化学气体泄漏</a></li>
                                <li class="location_msg02 location_double">案发时间：<a href="#" style="color: #cdd6db;">2017-09-10<br>11:40</a>
                                </li>
                                <li class="location_msg01 location_double">地址：北京市成华区一环路南三段45#</a></li>
                                <li class="location_msg01 location_single" style="width: 100%; height: 40%">
                                    案件关联：“131”抢劫、2014-05-13火灾、2013-12-08毒气 泄漏。</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="dataAllBorder01 cage_cl check_increase" style=" margin-top: 1.5% !important;">
                        <!--切换01-->
                        <div class="dataAllBorder02 over_hide dataAllBorder20" id="over_hide">
                        <#--<ul>-->
                        <#--<li class="depart_name">疫情事件一：${newslist[0].title}</li>-->
                        <#--<li class="depart_name">疫情发生时间：${newslist[0].pubDateStr}</li>-->
                        <#--<li class="depart_name">疫情事件内容：${newslist[0].summary}</li>-->
                        <#--<li class="depart_name">疫情信息 来源：${newslist[0].infoSource}</li>-->
                        <#--<li class="depart_name">疫情时间链接：<a href="${newslist[0].sourceUrl}" style="color: white">详情界面链接</a></li>-->
                        <#--</ul>-->
                            <div class="analysis" style="text-align: center">疫情最新时间实时监测</div>
                            <ul style="font-size: 16px;text-indent: 1em;color: white">
                                <li>疫情事件：${newslist[0].title}</li>
                                <li>疫情发生时间：${newslist[0].pubDateStr}</li>
                                <li>疫情事件内容：${newslist[0].summary}</li>
                                <li>疫情信息来源：${newslist[0].infoSource}</li>
                                <li>疫情链接：<a href="${newslist[0].sourceUrl}" style="color: white">详情界面链接</a></li>
                            </ul>
                        <#--<table class="table table-bordered">-->
                        <#--<thead>-->
                        <#--<tr>-->
                        <#--<th style="width: 18%">最近发生时间</th>-->
                        <#--<th>时间一</th>-->
                        <#--<th>来源</th>-->
                        <#--<th>详情链接</th>-->
                        <#--</tr>-->
                        <#--</thead>-->

                        <#--<tbody>-->
                        <#--<#list newslist as news>-->
                        <#--<tr>-->
                        <#--<td>${news.pubDateStr}</td>-->
                        <#--<td>${news.title}</td>-->
                        <#--<td>${news.infoSource}</td>-->
                        <#--<td>${news.sourceUrl}</td>-->
                        <#--</tr>-->
                        <#--</#list>-->
                        <#--</tbody>-->

                        <#--</table>-->
                        <#--<table class="table table-bordered">-->
                        <#--<thead>-->
                        <#--<tr>-->
                        <#--<th style="width: 18%">名称</th>-->
                        <#--<th>归属</th>-->
                        <#--<th>程度</th>-->
                        <#--<th>范围(r=?)</th>-->
                        <#--</tr>-->
                        <#--</thead>-->
                        <#--<tbody>-->
                        <#--<tr>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>全城</td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>车站</td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>xxxxxxx</td>-->
                        <#--<td>-</td>-->
                        <#--</tr>-->
                        <#--</tbody>-->
                        <#--</table>-->
                        <#---->

                        </div>
                        <!--切换02-->
                        <div class="dataAllBorder02 over_hide dataAllBorder20" id="over_hide1" style="display: none">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 18%">名称</th>
                                    <th>级别</th>
                                    <th>流量</th>
                                    <th>范围(r=?)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>下载文本</td>
                                    <td>三级</td>
                                    <td>5t</td>
                                    <td>200m-5km</td>
                                </tr>
                                <tr>
                                    <td>浏览图片</td>
                                    <td>三级...</td>
                                    <td>3t</td>
                                    <td>4km-80km</td>
                                </tr>
                                <tr>
                                    <td>浏览视频</td>
                                    <td>二级</td>
                                    <td>20t</td>
                                    <td>400m-2km</td>
                                </tr>
                                <tr>
                                    <td>下载图片</td>
                                    <td>二级</td>
                                    <td>10t</td>
                                    <td>1km</td>
                                </tr>
                                <tr>
                                    <td>下载视频</td>
                                    <td>二级</td>
                                    <td>4t</td>
                                    <td>2km</td>
                                </tr>
                                <tr>
                                    <td>在线处理</td>
                                    <td>二级</td>
                                    <td>3t</td>
                                    <td>500m-2km</td>
                                </tr>
                                <tr>
                                    <td>在线查询</td>
                                    <td>二级</td>
                                    <td>10M2</td>
                                    <td>500m-10km</td>
                                </tr>
                                <tr>
                                    <td>xxx</td>
                                    <td>二级</td>
                                    <td>5t</td>
                                    <td>200m-5km</td>
                                </tr>
                                <tr>
                                    <td>xxxxx</td>
                                    <td>二级</td>
                                    <td>6t</td>
                                    <td>4km-80km</td>
                                </tr>
                                <tr>
                                    <td>xxxx</td>
                                    <td>二级</td>
                                    <td>11t</td>
                                    <td>400m-2km</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <!--地址检索切换03-->
                        <div class="dataAllBorder02 addition_check_in" style="display: none;position: relative">
                            <div class="analysis" style="height: 34px;%">地址检索：</div>
                            <div class="search_plate_box">
                                <ul class="search_separate">
                                    <li class="search_title">地址类型：</li>
                                    <select class="search_input_box search_chose_box">
                                        <option>全部</option>
                                        <option>居民区</option>
                                        <option>街道</option>
                                        <option>建筑物</option>
                                        <option>园区</option>
                                    </select>
                                </ul>
                                <ul class="search_separate">
                                    <li class="search_title">地址名称：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <button class="search_btn">开始检索</button>
                            </div>
                            <!--检索结果板块-->
                            <div class="search_sesult_box">
                                <ul class="search_result">
                                    <li class="search_result_add">资阳汽车客运中心</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">资阳市>雁江区>书台路与骏兴路交叉口西侧</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">成都大学金牛校区</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>东六巷</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">二十二中</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>育苗路</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">红盛生态园</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">北京市>xxx>惠王陵东路</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">资阳汽车客运中心</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">资阳市>雁江区>书台路与骏兴路交叉口西侧</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">黄忠公园</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>同德街</li>
                                </ul>
                            </div>
                            <!--翻页模块-->
                            <div class="tcdPageCode"></div>
                        </div>
                        <!--危化品检索切换04-->
                        <div class="dataAllBorder02 chemistry_check_in" id="chemistry_check_in"
                             style="display: none;position: relative">
                            <div class="analysis" style="height: 34px;">检索：</div>
                            <div class="search_plate_box">
                                <ul class="search_separate">
                                    <li class="search_title">编码类型：</li>
                                    <select class="search_input_box search_chose_box">
                                        <option>全部</option>
                                        <option>商品码</option>
                                        <option>企业码</option>
                                    </select>
                                </ul>
                                <ul class="search_separate">
                                    <li class="search_title">输入编码：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <button class="search_btn">开始检索</button>
                            </div>
                            <!--检索结果板块-->
                            <div class="search_sesult_box">
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">xxxxxx</li>
                                    <li class="danger_level level03">三级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期" onclick="showLife()"></li>
                                    <li class="search_result_car car_personal">xxxxxxx</li>
                                    <li class="search_result_car car_time">xxxxxxx</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">xxxxxx</li>
                                    <li class="danger_level level03">三级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期"></li>
                                    <li class="search_result_car car_personal">xxxxxx</li>
                                    <li class="search_result_car car_time">xxxxxxx</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">xxxxxx</li>
                                    <li class="danger_level level02">二级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期"></li>
                                    <li class="search_result_car car_personal">xxxxxx</li>
                                    <li class="search_result_car car_time">xxxxxx制造厂</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">烟花爆竹</li>
                                    <li class="danger_level level02">二级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期"></li>
                                    <li class="search_result_car car_personal">xxxxxx）</li>
                                    <li class="search_result_car car_time">xxxxxx建地化工厂</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">xxxxxx</li>
                                    <li class="danger_level level03">三级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期"></li>
                                    <li class="search_result_car car_personal">xxxxxxx</li>
                                    <li class="search_result_car car_time">xxxxxxx</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add danger_result">xxxxxx</li>
                                    <li class="danger_level level01">二级</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" title="生命周期"></li>
                                    <li class="search_result_car car_personal">xxxxxxx</li>
                                    <li class="search_result_car car_time">xxxxxxx</li>
                                </ul>
                            </div>
                            <!--翻页模块-->
                            <div class="chemistry_tcdPageCode"></div>
                        </div>
                        <!--企业检索切换05-->
                        <div class="dataAllBorder02 enterprise_check_in" id="enterprise_check_in"
                             style="display: none;position: relative">
                            <div class="analysis" style="height: 34px;">企业检索：</div>
                            <div class="search_plate_box">
                                <ul class="search_separate">
                                    <li class="search_title">行业选择：</li>
                                    <select class="search_input_box search_chose_box">
                                        <option>物流企业</option>
                                        <option>食品生产制造</option>
                                        <option>服务行业</option>
                                        <option>工业生产</option>
                                        <option>电子产品制造</option>
                                        <option>科技服务</option>
                                    </select>
                                </ul>
                                <ul class="search_separate">
                                    <li class="search_title">企业名字：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <ul class="search_separate">
                                    <li class="search_title">登记号：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <button class="search_btn">开始检索</button>
                            </div>
                            <!--检索结果板块-->
                            <div class="search_sesult_box">
                                <ul class="search_result">
                                    <li class="search_result_add">便利店总部（350298100000405）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">北京市>武侯区>新希望路223号4楼</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">红旗连锁（260220100003523）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>建业路244号</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">蓝海旅行社（260220100003523）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>育苗路</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">吴铭火锅（350298100000405）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">北京市>xxx>惠王陵东路</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">阿杰发艺连锁（260220100003523）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">书台路与骏兴路交叉口西侧</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">黄忠公园（350298100000405）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_eddit" onclick="people()" title="操作"></li>
                                    <li class="search_result_road">北京市>朝阳>同德街</li>
                                </ul>
                            </div>
                            <!--翻页模块-->
                            <div class="enterprise_tcdPageCode"></div>
                        </div>
                        <!--车辆检索切换06-->
                        <div class="dataAllBorder02" id="car_check_in" style="display: none;position: relative">
                            <div class="analysis" style="height: 34px;">车辆检索：</div>
                            <div class="search_plate_box">
                                <ul class="search_separate">
                                    <li class="search_title">车牌号码：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <ul class="search_separate">
                                    <li class="search_title">车主姓名：</li>
                                    <li class="search_input_box"><input class="search_input" type="text"></li>
                                </ul>
                                <button class="search_btn">检索</button>
                            </div>
                            <!--检索结果板块-->
                            <div class="search_sesult_box">
                                <ul class="search_result">
                                    <li class="search_result_add">川A·K5H12（陈浩）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">福特（福克斯两厢）</li>
                                    <li class="search_result_car car_time">乘用车（5座)</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">川A·14AG2（张正涛）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">福特（金牛座）</li>
                                    <li class="search_result_car car_time">乘用车（5座)</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">川B·2563K（李雪）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">上海大众（迈腾）</li>
                                    <li class="search_result_car car_time">乘用车（5座)</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">川A·SH273（刘红）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">菲亚特（菲翔）</li>
                                    <li class="search_result_car car_time">乘用车（5座)</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">川A·K5H12（陈浩）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">奔驰（C200）</li>
                                    <li class="search_result_car car_time">乘用车（5座)</li>
                                </ul>
                                <ul class="search_result">
                                    <li class="search_result_add">川A·K5H12（张起国）</li>
                                    <li class="search_location" title="定位"></li>
                                    <li class="search_guiji" title="轨迹回放"></li>
                                    <li class="search_result_car car_personal">东风商用车（天龙）</li>
                                    <li class="search_result_car car_time">载货卡车（100t)</li>
                                </ul>
                            </div>
                            <!--翻页模块-->
                            <div class="car_tcdPageCode"></div>
                        </div>
                    </div>

                    <div class="dataAllBorder01 cage_cl check_decrease"
                         style="margin-top: 1.5% !important; height: 32%; position: relative;">
                        <div class="dataAllBorder02 over_hide" style="padding: 1.2%;">
                            <div class="analysis">疫情主要国家占比：</div>
                            <div class="danger_contain_box">
                                <div id="container_huan" style="height: 90%;width: 100%"></div>
                            </div>
                            <div class="danger_depart_box">

                                <ul class="danger_depart">
                                    <li class="danger_ico"
                                        style="background-image: url(img/images/pic_ico_01.png); background-position-x: 0px"></li>
                                    <li class="data_name">中国新增病例统计</li>
                                    <li class="data data01">5</li>
                                    <li class="data data02">↓&nbsp&nbsp1%</li>
                                </ul>
                                <ul class="danger_depart">
                                    <li class="danger_ico"
                                        style="background-image: url(img/images/pic_ico_02.png); background-position-x: 0px"></li>
                                    <li class="data_name">中国死亡人数统计</li>
                                    <li class="data data01">0</li>
                                    <li class="data data02" style="color: #ff2865;">↓&nbsp&nbsp99.9%</li>
                                </ul>

                                <ul class="danger_depart danger_depart01">
                                    <li class="danger_ico"
                                        style="background-image: url(img/images/pic_ico_03.png); background-position-x: 0px"></li>
                                    <li class="data_name">中国重症人数统计</li>
                                    <li class="data data01">20</li>
                                    <li class="data data02">↑&nbsp&nbsp1%</li>
                                </ul>

                                <ul class="danger_depart danger_depart01">
                                    <li class="danger_ico"
                                        style="background-image: url(img/images/pic_ico_01.png); background-position-x: 0px"></li>
                                    <li class="data_name">中国疑似人数统计</li>
                                    <li class="data data01">9</li>
                                    <li class="data data02">↓&nbsp&nbsp5%</li>
                                </ul>

                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <div class="inner" style="display: none;">
                <div class="data_left01">
                    <div class="dataAll maginS">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx分析</div>
                                <div class="data_chart" id="buyTime"></div>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx类型分析</div>
                                <p class="data_chart" id="Package01"></p>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx分析</div>
                                <p class="data_chart" id="rode01"></p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="data_left01">
                    <div class="dataAll maginS">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxxx分析</div>
                                <p class="data_chart" id="bookAret"></p>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxxxx分析</div>
                                <p class="data_chart" id="bookBmonth"></p>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxxxx分析</div>
                                <p class="data_chart" id="whearAbook"></p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="data_left02">
                    <div class="dataAll01">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit2">数据汇总</div>

                                <table class="table_data01">
                                    <tr>
                                        <td>总数</td>
                                        <td colspan="3" class="font01">56320</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxxx数</td>
                                        <td colspan="3" class="font02">56320</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxx数：</td>
                                        <td>10个</td>
                                        <td>类型数：</td>
                                        <td>6个</td>
                                    </tr>
                                    <tr>
                                        <td>xxxx最多数：</td>
                                        <td>16-20点</td>
                                        <td>xxxxx最多月：</td>
                                        <td>12月</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxx最多季节：</td>
                                        <td>xxxx</td>
                                        <td>xxxxx天气：</td>
                                        <td>晴天</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxxx：</td>
                                        <td>套餐A</td>
                                        <td>xxxxxx：</td>
                                        <td>活动</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxxx：</td>
                                        <td>交通畅通</td>
                                        <td>xxxxx特殊时间：</td>
                                        <td>国庆节</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxx：</td>
                                        <td colspan="3" style="color: red">xxxxxB</td>

                                    </tr>
                                    <tr>
                                        <td>xxxxx多季节：</td>
                                        <td colspan="3" style="color: red">冬季</td>

                                    </tr>

                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="dataAll02">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx分析</div>
                                <p class="data_chart" id="rodeAbook"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="data_left01">
                    <div class="dataAll maginS">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx分析</div>
                                <p class="data_chart" id="seaAbook01"></p>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxx订单分析</div>
                                <p class="data_chart" id="actionBook"></p>
                            </div>
                        </div>
                    </div>
                    <div class="dataAll">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit1">xxxxxx分析</div>
                                <p class="data_chart" id="sperceBook01"></p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="inner" style="display:none">
                <div class="data_left03">
                    <div class="dataAllNo01 maginS01">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit3">收入渠道分析</div>
                                <table class="table_data01">
                                    <tr>
                                        <td>总收入：</td>
                                        <td colspan="3" class="font01">123653元</td>
                                    </tr>
                                    <tr>
                                        <td>收入渠道数：</td>
                                        <td colspan="3" class="font03">5个</td>
                                    </tr>
                                    <tr>
                                        <td>收入最多渠道</td>
                                        <td class="font04">渠道A(56%)</td>
                                        <td>收入最少渠道</td>
                                        <td class="font05">渠道C(2.8%)</td>
                                    </tr>
                                    <tr>
                                        <td>渠道A收入</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道A收入占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>
                                    <tr>
                                        <td>渠道B收入</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道B收入占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>
                                    <tr>
                                        <td>渠道C收入</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道D收入占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>

                                </table>
                                <p class="data_chart01" id="zhanbi02"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="data_left04">

                    <!--style="margin-top: 6.3%"-->
                    <div class="dataAllNo01">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit3">营销投入与销售量分析</div>
                                <table class="table_data02">
                                    <tr>
                                        <td class="font07">销量总量</td>
                                        <td class="font03">1560万元</td>
                                        <td class="font07">营销投入量</td>
                                        <td class="font02">560万</td>
                                    </tr>
                                    <tr>
                                        <td class="font07">总利润</td>
                                        <td class="font01">1000万元</td>
                                        <td class="font07">利润率</td>
                                        <td class="font01">464.15%</td>
                                    </tr>

                                </table>
                                <p>
                                <div class="zhanleft01" id="allAly01"></div>
                                <div class="zhanleft01" id="allAly02"></div>
                                </p>
                                <p class="zhanleft02" id="allAly03"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="data_left03">
                    <div class="dataAllNo01 maginS01">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit3">支出渠道分析</div>
                                <table class="table_data01">
                                    <tr>
                                        <td>总支出：</td>
                                        <td colspan="3" class="font02">123653元</td>
                                    </tr>
                                    <tr>
                                        <td>支出渠道数：</td>
                                        <td colspan="3" class="font02">5个</td>
                                    </tr>
                                    <tr>
                                        <td>支出最多渠道</td>
                                        <td class="font05">渠道A(56%)</td>
                                        <td>支出最少渠道</td>
                                        <td class="font04">渠道C(2.8%)</td>
                                    </tr>
                                    <tr>
                                        <td>渠道A支出</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道A支出占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>
                                    <tr>
                                        <td>渠道B支出</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道B支出占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>
                                    <tr>
                                        <td>渠道C支出</td>
                                        <td class="font6">53602元</td>
                                        <td>渠道D支出占比</td>
                                        <td class="font6">4.8%</td>
                                    </tr>

                                </table>
                                <p class="data_chart01" id="zhanbi03"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="inner" style="display: none">
                <div class="clear"></div>
                <div class="data_left05">
                    <div class="dataAllNo02 ">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit">xxxxxxx分析</div>
                                <p class="data_chart02" id="shijian01"></p>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="data_left05">
                    <div class="dataAllNo02 ">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit">xxxxx分析</div>
                                <table class="table_data02">
                                    <tr>
                                        <td class="font07">事件类型</td>
                                        <td class="font03">5个</td>
                                        <td class="font07">xxxx</td>
                                        <td class="font02">560万</td>
                                    </tr>
                                    <tr>
                                        <td class="font07">最多发生事件</td>
                                        <td class="font01">xxxx</td>
                                        <td class="font07">最少发生事件</td>
                                        <td class="font01">xxxxx</td>
                                    </tr>

                                </table>
                                <p class="data_chart02" id="shijian03"></p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>
                <div class="data_left05">
                    <div class="dataAllNo02">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit">xxxx分析</div>
                                <p class="data_chart02" id="shijian02"></p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="data_left05">
                    <div class="dataAllNo02">
                        <div class="dataAllBorder01">
                            <div class="dataAllBorder02">
                                <div class="data_tit">xxxxxx分析</div>

                                <p class="data_chart03" id="shijian04"></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="inner" style="display: none">
                <div class="manage_left l_left">
                    <!--<div class="manage_left_nav"><img src="img/left_nav.png"/></div>-->
                    <div class="manage_line1">
                        <div class="manage_line2">
                            <div class="manage_top_middle">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <td>xxxx总数</td>
                                        <td colspan="3">25414人</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxx</td>
                                        <td colspan="3">省内游客</td>
                                    </tr>
                                    <tr>
                                        <td>xxxxx</td>
                                        <td colspan="3">青年</td>
                                    </tr>
                                    <tr>
                                        <td>男性游客</td>
                                        <td>5424人</td>
                                        <td>女性游客</td>
                                        <td>5457人</td>
                                    </tr>
                                    <tr>
                                        <td>团队游客</td>
                                        <td>5424人</td>
                                        <td>散客</td>
                                        <td>5457人</td>
                                    </tr>
                                    <tr>
                                        <td>同比</td>
                                        <td>下降5%</td>
                                        <td>环比</td>
                                        <td>上升5.6%</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <p>xxxxx数据汇总</p>
                            </div>
                            <div class="manage_left_top">
                                <div class="manage_top_left l_left">
                                    <div id="container2" style="height: 90%"></div>
                                    <p>xxxxx分析</p>
                                </div>
                                <div class="manage_top_left l_left">
                                    <div id="container1" style="height: 90%"></div>
                                    <p>xxxx分析</p>
                                </div>
                                <div class="manage_top_left l_left">
                                    <div id="container3" style="height:90%"></div>
                                    <p>xxxx分析</p>
                                </div>

                            </div>
                            <div class="manage_top_middle">
                                <div id="container4" style="height: 90%"></div>
                                <p>xxxx数据分析</p>
                            </div>
                            <!--<div class="manage_top_middle l_left">-->
                            <!--<div id="container5" style="height: 90%"></div>-->
                            <!--<p>天气——游客数据分析</p>-->
                            <!--</div>-->
                        </div>
                    </div>
                </div>
                <div class="manage_left l_left">
                    <!--<div class="manage_left_nav"><img src="img/left_nav.png"/></div>-->
                    <div class="manage_line1">
                        <div class="manage_line2">
                            <div class="manage_top_middle l_left">
                                <div id="container9" style="height: 90%"></div>
                                <p>xxxx情况</p>
                            </div>
                            <div class="manage_top_middle l_left">
                                <div id="container10" style="height: 90%"></div>
                                <p>xxxx分析</p>
                            </div>
                            <div class="manage_top_middle l_left">
                                <div id="container11" style="height: 90%"></div>
                                <p>xxxx分析</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="manage_left l_left">
                    <!--<div class="manage_left_nav"><img src="img/left_nav.png"/></div>-->
                    <div class="manage_line1">
                        <div class="manage_line2">
                            <div class="manage_top_middle">
                                <div id="container12" style="height: 90%"></div>
                                <p>xxxxx排行</p>
                            </div>
                            <div class="manage_top_middle">
                                <div id="container6" style="height: 90%"></div>
                                <p>xxxx数据分析</p>
                            </div>
                            <div class="manage_top_middle l_left">
                                <div id="container5" style="height: 90%"></div>
                                <p>xxxxx数据分析</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="inner" style="display: none;">
                <div class="user_left l_left" style=" margin-left: 0.6%">
                    <!--<div class="user_left_nav"><img src="../images/left_nav.png"/></div>-->
                    <div class="user_line1">
                        <div class="user_line2">
                            <div class="user_top_middle">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <td>xxxx总数</td>
                                        <td colspan="3">965人</td>
                                    </tr>
                                    <tr>
                                        <td>xxxx工作人员</td>
                                        <td>625人</td>
                                        <td>xxxx工作人员</td>
                                        <td>340人</td>
                                    </tr>
                                    <tr>
                                        <td>xxxx</td>
                                        <td>急救部</td>
                                        <td>xxxx工作人员</td>
                                        <td>xxx（99%）</td>
                                    </tr>
                                    <tr>
                                        <td>xxx</td>
                                        <td>售票部</td>
                                        <td>xxxx</td>
                                        <td>安保部</td>
                                    </tr>
                                    <tr>
                                        <td>xxx</td>
                                        <td>李焕</td>
                                        <td>xxx</td>
                                        <td>周伟</td>
                                    </tr>
                                    <tr>
                                        <td>xxxx主要原因</td>
                                        <td>人为损坏</td>
                                        <td>xxx处理情况</td>
                                        <td>均及时进行设备处理</td>
                                    </tr>
                                    <!--<tr>-->
                                    <!--<td>年度最佳员工</td>-->
                                    <!--<td>李进</td>-->
                                    <!--<td>重点观察员工</td>-->
                                    <!--<td>周伟</td>-->
                                    <!--</tr>-->

                                    </tbody>
                                </table>
                                <p>xxx管理汇总</p>
                            </div>
                            <div class="user_left_top">
                                <div class="user_top_left l_left">
                                    <div id="userContainerSex" style="height: 90%"></div>
                                    <p>工作人员性别占比</p>
                                </div>
                                <div class="user_top_left l_left">
                                    <div id="userContainerManage" style="height: 90%"></div>
                                    <p>各部门人员占比</p>
                                </div>
                                <div class="user_top_left l_left">
                                    <div id="userContainerAge" style="height:90%"></div>
                                    <p>工作人员年龄段占比</p>
                                </div>

                            </div>
                            <div class="user_top_middle">
                                <div id="userContainerAttendance" style="height: 90%"></div>
                                <p>景区各部门出勤情况</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="user_left l_left" style=" margin-left: 0.6%">
                    <!--<div class="manage_left_nav"><img src="../images/left_nav.png"/></div>-->
                    <div class="user_line1">
                        <div class="user_line2">
                            <div class="user_top_middle l_left">
                                <div id="userContainerPersonal" style="height: 90%"></div>
                                <p>xxx排行</p>
                            </div>
                            <div class="user_top_middle l_left">
                                <div id="userContainerFlow" style="height: 90%"></div>
                                <p>xxx分析</p>
                            </div>
                            <div class="user_top_middle l_left">
                                <div id="userContainerIllegal" style="height: 90%"></div>
                                <p>xxxx分析</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="user_left l_left" style=" margin-left: 0.6%">
                    <!--<div class="manage_left_nav"><img src="../images/left_nav.png"/></div>-->
                    <div class="user_line1">
                        <div class="user_line2">
                            <div class="user_top_middle">
                                <div id="userContainerComplaint" style="height: 90%"></div>
                                <p>xxxx情况</p>
                            </div>
                            <div class="user_top_middle">
                                <div id="userContainerPrize" style="height: 90%"></div>
                                <p>xxx分析</p>
                            </div>
                            <div class="user_top_middle l_left">
                                <div class="user_right_left l_left">
                                    <div id="userContainerReason" style="height: 90%"></div>
                                    <p>xxx原因分析</p>
                                </div>
                                <div class="user_right_left l_left">
                                    <div id="userContainerHandle" style="height: 90%"></div>
                                    <p>故障处理情况</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="js/echarts-all.js"></script>
    <script src="js/index.js"></script>
    <script src="js/bstable/js/bootstrap.min.js"></script>
    <script src="js/bstable/js/bootstrap-table.js"></script>
    <script type="text/javascript" src="js/jquery.pagination.js"></script>
    <script src="js/bstable/js/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=5ieMMexWmzB9jivTq6oCRX9j&callback"></script>

    <!--<script src="js/MainMap.js"></script>-->
    <script src="js/Home_page.js"></script>
    <script src="js/artDialog/artDialog.js"></script>
    <script src="js/artDialog/plugins/iframeTools.source.js"></script>
    <script>
        var number;
        $(function () {
            if (window.screen.height <= 768) {
                number = 4;
            } else if (window.screen.height > 768 && window.screen.height <= 900) {
                number = 6
            } else if (window.screen.height > 1080) {
                number = 8
            }
        });


        //    翻页模块
        $(".tcdPageCode").createPage({
            pageCount: 5,
            current: 1,
            backFn: function (p) {
            }
        });
        $(".chemistry_tcdPageCode").createPage({
            pageCount: 4,
            current: 1,
            backFn: function (p) {
            }
        });
        $(".enterprise_tcdPageCode").createPage({
            pageCount: 4,
            current: 1,
            backFn: function (p) {
            }
        });
        $(".car_tcdPageCode").createPage({
            pageCount: 4,
            current: 1,
            backFn: function (p) {
            }
        });

        $(function () {
            $(".tit02Diva a").each(function (index) {
                $(this).on("click", function () {
                    $(".data_map").eq(index).fadeIn().siblings(".data_map").stop().hide();
                    $(this).prev('i').removeClass('i_crlieAction');
                    $(this).siblings('a').prev('i').addClass('i_crlieAction');

                })
            });
            BootstrapTable();
            Echarts();
            $("#fresh_tool").click(function (event) {
                event.stopPropagation();
                cancel();
            })

        });

        function EventClick() {
            $(".check_increase").removeClass("check_increase_act");
            $("#over_hide1").show().siblings().hide();
            $(".check_decrease").show();
            $("#cage_cl").hide();
            $("#map_title_innerbox").hide();
            $("#cage_cl1").show();
            //        $("#over_hide").show();
            $("#map_title_innerbox1").show();
            $(".addition_check_in").hide();
            $("#car_check_in").hide();
            BootstrapTable();
        }

        function cancel(e) {
            $(".check_increase").removeClass("check_increase_act");
            $("#over_hide").show().siblings().hide();
            $(".check_decrease").show();
            $("#cage_cl").show();
            $("#cage_cl1").hide();
            //        $("#cage_cl").show();
            //        $("#over_hide1").show();
            //        $("#map_title_innerbox").show();
            BootstrapTable();
        }

        //    地址检索
        $(".addition_check_btn").click(function () {
            $(".check_increase").addClass("check_increase_act");
            $(".check_decrease").hide()
            $(".addition_check_in").show().siblings().hide()
        });

        //    危化品检索
        function chemistryCheck() {
            $(".check_increase").addClass("check_increase_act");
            $(".check_decrease").hide()
            $("#chemistry_check_in").show().siblings().hide()
        }

        //    企业检索
        function enterpriseCheck() {
            $(".check_increase").addClass("check_increase_act");
            $(".check_decrease").hide()
            $("#enterprise_check_in").show().siblings().hide()
        }

        //    车辆检索
        function carCheck() {
            $(".check_increase").addClass("check_increase_act");
            $(".check_decrease").hide()
            $("#car_check_in").show().siblings().hide()
        }

        function BootstrapTable() {
            $('#table').bootstrapTable({
                method: "get",
                striped: true,
                singleSelect: false,
                url: "json/Epidemic.json",
                dataType: "json",
                pagination: true, //分页
                pageSize: number,
                pageNumber: 1,
                search: true, //显示搜索框
                contentType: "application/x-www-form-urlencoded",
                queryParams: null,
                columns: [
                    {
                        title: "日期",
                        field: 'id',
                        width: 150,
                        align: 'center',
                        valign: 'middle'
                    },
                    // {
                    //     title: '全国疫情数据',
                    //     field: 'carno',
                    //     width: 80,
                    //     align: 'center',
                    //     valign: 'middle'
                    // },
                    {
                        title: '现存确诊人数',
                        field: 'company',
                        align: 'center',
                        valign: 'middle'
                    },

                    {
                        title: '累计确诊人数',
                        field: 'content',
                        align: 'center'
                    },

                    {
                        title: '现存疑似人数',
                        field: 'speed',
                        width: 80,
                        align: 'center'
                    },
                    {
                        title: '累计治愈人数',
                        field: 'load',
                        width: 80,
                        align: 'center'
                    },
                    {
                        title: '累计死亡人数',
                        field: 'carno',
                        align: 'center',
                    }

                ]
            });

            $('#table1').bootstrapTable({
                method: "get",
                striped: true,
                singleSelect: false,
                url: "json/note1.json",
                dataType: "json",
                pagination: true, //分页
                pageSize: number,
                pageNumber: 1,
                search: false, //显示搜索框
                contentType: "application/x-www-form-urlencoded",
                queryParams: null,
                columns: [
                    {
                        title: "id",
                        field: 'id',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '发生时间',
                        field: 'title',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '事件详情',
                        field: 'type',
                        align: 'center',
                        valign: 'middle'
                    },

                    {
                        title: '详细链接',
                        field: 'person',
                        align: 'center'
                    }

                ]
            });

            $('#table2').bootstrapTable({
                method: "get",
                striped: true,
                singleSelect: false,
                url: "json/note2.json",
                dataType: "json",
                pagination: true, //分页
                pageSize: number,
                pageNumber: 1,
                search: false, //显示搜索框
                contentType: "application/x-www-form-urlencoded",
                queryParams: null,
                columns: [
                    {
                        title: "威胁源",
                        field: 'id',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '辐射距离',
                        field: 'title',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '威胁范围',
                        field: 'type',
                        align: 'center',
                        valign: 'middle'
                    },

                    {
                        title: '危害类型',
                        field: 'person',
                        align: 'center'
                    }

                ]
            });
        }

        function Echarts() {
            var myChart = echarts.init($("#container_huan")[0]);
            var option = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: ['中国', '西班牙', '意大利', '英国', '美国'],
                    textStyle: {
                        color: "#e9ebee"
                    }
                },
                series: [
                    {
                        name: '疫情数据',
                        type: 'pie',
                        center: ['80%', '50%'],
                        radius: ['50%', '80%'],
                        avoidLabelOverlap: false,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '30',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        itemStyle: {
                            normal: {
                                label: {
                                    show: false
                                },
                                labelLine: {
                                    show: false
                                }
                            }
                        },
                        data: [
                            {value: 335, name: '中国'},
                            {value: 310, name: '西班牙'},
                            {value: 234, name: '意大利'},
                            {value: 135, name: '英国'},
                            {value: 1548, name: '美国'}
                        ]
                    }
                ]
            };
            myChart.setOption(option);
        }


        function TimeControl() {
            $(".message_scroll_box").animate({marginTop: 96}, 800,
                    function () {
                        $(".message_scroll_box").css({marginTop: 0});    //把顶部的边界清零
                        $(".message_scroll_box .message_scroll:first").before($(".message_scroll_box .message_scroll:last"));    //在第一个新闻后面插入最后一个新闻
                    });
        }

        $(document).ready(function () {
            $("button").click(function () {
                $.get("http://api.tianapi.com/txapi/ncov/index?key=APIKEY",
                        function (data, status) {
                            console.log(data);
                            $('#result').append(JSON.stringify(data)); //返回内容绑定到ID为result的标签
                            alert("状态码：" + data.code + "\n返回：" + data.msg);
                        });
            });
        });

        var T = setInterval(TimeControl, 2300);    //开始定时
        $(".message_scroll_box").mouseenter(function () {
            clearInterval(T);    //停止定时
        })
                .mouseleave(function () {
                    T = setInterval(TimeControl, 10000);    //再次定时
                })

    </script>

    <!--轨迹回放时间日期选择-->
    <script>
        !function () {
            laydate.skin('danlan');//切换皮肤，请查看skins下面皮肤库
            laydate({elem: '#demo'});
            laydate({elem: '#demo1'});//绑定元素
        }();
        //日期范围限制
        var start = {
            elem: '#start',
            format: 'YYYY-MM-DD',
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16', //最大日期
            istime: true,
            istoday: false,
            choose: function (datas) {
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            elem: '#end',
            format: 'YYYY-MM-DD',
            min: laydate.now(),
            max: '2099-06-16',
            istime: true,
            istoday: false,
            choose: function (datas) {
                start.max = datas; //结束日选好后，充值开始日的最大日期
            }
        };
        laydate(start);
        laydate(end);

        function edit() {
            layer.open({
                type: 2,
                title: '存储详情',
                shade: 0.5,
                skin: 'layui-layer-rim',
                area: ['700px', '400px'],
                shadeClose: true,
                closeBtn: 1,
                content: 'saveFindTail.html'
            });
        }
    </script>

    <script>
        // 百度地图API功能
        var map = new BMap.Map("map");    // 创建Map实例
        map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
        //添加地图类型控件
        map.addControl(new BMap.MapTypeControl({
            mapTypes: [
                BMAP_NORMAL_MAP,
                BMAP_HYBRID_MAP
            ]
        }));
        var mapStyle = {
            style: "dark"
        };
        map.setMapStyle(mapStyle);
        map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
        map.enableScrollWheelZoom(true);
    </script>

    </body>
    </html>



























