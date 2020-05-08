<!doctype html>
<meta charset="utf-8">
<title>微博舆情分析</title>
<link href="css/style.css"  rel="stylesheet" type="text/css" media="all" />
<script src="js/echarts.min.js" charset="utf-8"></script>


<body>
<div class="bnt">
  <div class="topbnt_left fl">
   <ul><li ><a href="http://localhost:8080/index">疫情分析</a></li>
      <#--<li><a href="#">实有人口</a></li>-->
      <#--<li><a href="#">流动人口</a></li>-->
      <#--<li><a href="#">实名制</a></li>-->
   </ul>
  </div>
  <h1 class="tith1 fl">舆情分析</h1>
  <div class=" fr topbnt_right">
    <ul>
       <#--<li><a href="#">返回</a></li>-->
       <#--<li><a href="#">分析报告</a></li>-->
       <#--<li><a href="#">交通</a></li>-->
       <#--<li><a href="#">舆情</a></li>-->
    </ul>
   </ul>
  </div>
</div>
<!-- bnt end -->
<div class="puleft fl">
    <div class="pulefttop"><h2 class="tith2"><span>舆情来源分析</span></h2>
    <div class="lefttoday_tit"><p class="fl">地区：甘孜</p><p class="fr">2020-05-05</p></div>
    <div class="box pbox">
      <div class="lefttoday_bar pulefttoday_bar fl">
        <ul>
          <li class="c1 big1" style="top: 25%;left: 16%;"><span>交通警情6</span></li>
          <li class="c2 big2" style="top: 35%;left: 65%;"><span>求助1</span></li>
          <li class="c3 big4" style="top: 25%;left: 35%;"><span>无效报警2</span></li>
          <li class="c4 big5" style="top: 65%;left: 65%;"><span>投诉2</span></li>
          <li class="c5 big6" style="top: 65%;left: 25%;"><span>灾害事故1</span></li>
          <li class="c6 big1" style="top: 45%;left: 15%;"><span>刑事案件1</span></li>
          <li class="c1 big0" style="top: 35%;left: 75%;"></li>
          <li class="c2 big0" style="top: 85%;left: 55%;"></li>
          <li class="c3 big0" style="top: 85%;left: 15%;"></li>
        </ul>
      </div>
      <div class="pvr fr pulefttoday_bar2" >
        <ul>
          <li class="hot1">1</li>
          <li class="hot2">2</li>
          <li class="hot3">3</li>
          <li class="hot4">4</li>
          <li class="hot5">5</li>
        </ul>
            <div id="puleftbox2bott_cont" class="puleftbox2bott_cont" ></div>
      </div>
    </div>
    <!-- lefttoday_number end -->
    </div>
    <div class="puleftboxtmidd">
      <h2 class="tith2">舆情区域分析</h2>
          <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01 至 2020-05-05</p></div>
    <div class="box pbox">
      <div id="puleftboxtmidd1" class="fl puleftboxtmidd1"></div>
          <div class="pvr fr pulefttoday_bar2" >
            <ul>
              <li class="hot1">1</li>
              <li class="hot2">2</li>
              <li class="hot3">3</li>
              <li class="hot4">4</li>
              <li class="hot5">5</li>
            </ul>
            <div id="puleftboxtmidd2" class="puleftbox2bott_cont"></div>
      </div>
    </div>
  </div>
  <div class="puleftboxtbott">
    <h2 class="tith2 pt1">舆情环比分析</h2>
        <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01 至 2020-05-05</p></div>
    <div class="box pbox">
      <div id="puleftboxtbott1" class="fl puleftboxtbott1" ></div>
      <div  class="puleftboxtbott2 fr" >
        <div class="widget-inline-box text-center ">
          <p>今日舆情总数</p>
          <h3 class=" ceeb1fd">54</h3>
          <h4 class="text-muted ">环比<img src="img/iconup.png" height="16" />2%</h4>
        </div>
        <div class="widget-inline-box text-center ">
           <p>本周舆情总数</p>
          <h3 class=" c24c9ff">54</h3>
          <h4 class="text-muted ">环比<img src="img/icondown.png" height="16" />3%</h4>
        </div>
        <div class="widget-inline-box text-center ">
           <p>本月舆情总数</p>
          <h3 class=" cffff00">4</h3>
          <h4 class="text-muted ">环比<img src="img/icondown.png" height="16" />3%</h4>
        </div>
      </div>
    </div>
</div>
</div>
<!--  left1 end -->
<div class="fl pt6 puleft2">
        <div class="pmidd_bott">
          <div class="pumiddboxttop1 fl">
              <h2 class="tith2 pt3">今日舆情</h2>
              <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01</p></div>
              <div class="puleft2height">
                    <div class="widget-inline-box text-center ">
                      <p>今日舆情总数</p>
                      <h3 class=" ceeb1fd f30">54</h3>
                      <h4 class="text-muted ">环比<img src="img/iconup.png" height="16" />2%</h4>
                    </div>
                    <div class="widget-inline-box text-center ">
                       <p>本周舆情总数</p>
                      <h3 class=" c24c9ff f30">54</h3>
                      <h4 class="text-muted ">环比<img src="img/icondown.png" height="16" />3%</h4>
                    </div>
                    <div class="widget-inline-box text-center ">
                       <p>本月舆情总数</p>
                      <h3 class=" cffff00 f30">4</h3>
                      <h4 class="text-muted ">环比<img src="img/icondown.png" height="16" />3%</h4>
                    </div>
                    <div class="widget-inline-box text-center ">
                      <p>今日舆情总数</p>
                      <h3 class=" ceeb1fd f30">54</h3>
                      <h4 class="text-muted ">环比<img src="img/iconup.png" height="16" />2%</h4>
                    </div>
                  </div>
            </div>
            <div class="pumiddboxttop2 fl">
                <h2 class="tith2 pt3">热门信息</h2>
                <div class="lefttoday_tit "><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01</p></div>
                <div class="left2_table pumiddboxttop2_cont">
                   <ul>
                        <li>
                        <p class="text_l">${weibo.newslist[10].hotword}</p>
                        <p class="text_r">新浪微博  热度：${weibo.newslist[10].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li class="bg">
                            <p class="text_l">${weibo.newslist[3].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[3].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li>
                            <p class="text_l">${weibo.newslist[4].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[4].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li class="bg">
                            <p class="text_l">${weibo.newslist[6].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[6].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li>
                            <p class="text_l">${weibo.newslist[2].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[2].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li class="bg">
                            <p class="text_l">${weibo.newslist[1].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[1].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                        <li>
                            <p class="text_l">${weibo.newslist[8].hotword}</p>
                            <p class="text_r">新浪微博  热度：${weibo.newslist[8].hotwordnum}  2020-05-05 11:08:56</p>
                        </li>
                   </ul>
                </div>
              </div>
            </div>
            <!--  amidd_bott end-->
            <div class="pmiddboxtbott" >
              <h2 class="tith2 pt1">舆情同比分析</h2>
              <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01 至 2020-05-05</p></div>
              <div class="box pbox">
                <div id="pumiddboxtbott1" class="fl pumiddboxtbott1cont"></div>
                <div  class="pumiddboxtbott2 fr"  >
                  <div class="widget-inline-box text-center ">
                    <p>今年舆情总数</p>
                    <h3 class=" ceeb1fd f30">54</h3>
                    <h4 class="text-muted ">环比<img src="img/iconup.png" height="16" />2%</h4>
                  </div>

                </div>
              </div>
            </div>
            <!-- amidd_bott end -->
        </div>
        <!-- mrbox_top end -->
        <div class="mr_right fl">
          <div class="purightboxtop"><h2 class="tith2 pt12">舆情类别分析</h2>
            <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01</p></div>
            <div id="purightboxtop" class="purightboxtopcont"></div>
          </div>
          <div class="purightboxmidd"><h2 class="tith2 pt12">七日舆情走势分析</h2>
            <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01</p></div>
            <div id="purightboxmidd" class="purightboxmiddcont"></div>
          </div>
            <div class="purightboxbott"><h2 class="tith2 pt12">矛盾纠纷七日数据分析</h2>
              <div class="lefttoday_tit"><p class="fl">状态：已调节</p><p class="fr">时间段：2020-05-01 至 2020-05-05</p></div>
                <div id="purightboxbott" class="purightboxbottcont" ></div>
            </div>
        </div>
        <!-- mrbox_top_right end -->
      </div>


</div>

<script type="text/javascript">
        var myChart = echarts.init(document.getElementById('puleftbox2bott_cont'));
        option = {
          color:['#7ecef4'],
            backgroundColor: 'rgba(1,202,217,.2)',
            grid: {
                      left:40,
                      right:20,
                      top:30,
                      bottom:0,
                      containLabel: true
                    },

                  xAxis: {
                      type: 'value',
                      axisLine:{
                       lineStyle:{
                         color:'rgba(255,255,255,0)'
                       }
                     },
                     splitLine:{
                       lineStyle:{
                         color:'rgba(255,255,255,0)'
                       }
                     },
                     axisLabel:{
                         color:"rgba(255,255,255,0)"
                     },
                      boundaryGap: [0, 0.01]
                  },
                  yAxis: {
                      type: 'category',
                      axisLine:{
                       lineStyle:{
                         color:'rgba(255,255,255,.5)'
                       }
                     },
                     splitLine:{
                       lineStyle:{
                         color:'rgba(255,255,255,.1)'
                       }
                     },
                     axisLabel:{
                         color:"rgba(255,255,255,.5)"
                     },
                          data: ['贴吧','网站','新闻','抖音','微博']
                  },
                  series: [
                      {
                          name: '2011年',
                          type: 'bar',
                          barWidth :20,
                          itemStyle: {
                              normal: {
                                  color: new echarts.graphic.LinearGradient(
                                      1, 0, 0, 1,
                                      [
                                          {offset: 0, color: 'rgba(230,253,139,.7)'},
                                          {offset: 1, color: 'rgba(41,220,205,.7)'}
                                      ]
                                  )
                              }
                          },
                          data: [18203, 23489, 29034, 104970, 131744]
                      }
                  ]
              };
        myChart.setOption(option);
    </script>
    <script type="text/javascript">
            var myChart = echarts.init(document.getElementById('puleftboxtmidd1'));
            var data = [
                [5000, 10000, 6785.71],
                [4000, 10000, 6825],
                [3000, 6500, 4463.33],
                [2500, 5600, 3793.83],
                [2000, 4000, 3060],
                [2000, 4000, 3222.33],
                [2500, 4000, 3133.33],
                [1800, 4000, 3100],
                [1500, 1800, 1650]
            ];
            var cities = ['武汉', '北京', '杭州', '广州', '深圳', '南京', '东莞', '长沙', '西藏' ];
            var barHeight = 50;
            option = {
              color:['#7ecef4'],
                backgroundColor: 'rgba(1,202,217,.2)',
                grid: {
                          left:60,
                          right:60,
                          top:60,
                          bottom:40
                        },
                  legend: {
                         show: true,
                         data: ['价格范围', '均值']
                     },
                     angleAxis: {
                         type: 'category',
                         axisLine:{
                          lineStyle:{
                            color:'rgba(255,255,255,.2)'
                          }
                        },
                        splitLine:{
                          lineStyle:{
                            color:'rgba(255,255,255,.1)'
                          }
                        },
                        axisLabel:{
                            color:"rgba(255,255,255,.7)"
                        },
                         data: cities
                     },
                     radiusAxis: {
                       axisLine:{
                        lineStyle:{
                          color:'rgba(255,255,255,.2)'
                        }
                      },
                      splitLine:{
                        lineStyle:{
                          color:'rgba(255,255,255,.1)'
                        }
                      },
                      axisLabel:{
                          color:"rgba(255,255,255,.5)"
                      }
                     },
                     polar: {
                     },
                     series: [{
                         type: 'bar',
                         itemStyle: {
                             normal: {
                                 color: 'transparent'
                             }
                         },
                         data: data.map(function (d) {
                             return d[0];
                         }),
                         coordinateSystem: 'polar',
                         stack: '最大最小值',
                         silent: true
                     }, {
                         type: 'bar',
                         data: data.map(function (d) {
                             return d[1] - d[0];
                         }),
                         coordinateSystem: 'polar',
                         name: '价格范围',
                         stack: '最大最小值'
                     }, {
                         type: 'bar',
                         itemStyle: {
                             normal: {
                                 color: 'transparent'
                             }
                         },
                         data: data.map(function (d) {
                             return d[2] - barHeight;
                         }),
                         coordinateSystem: 'polar',
                         stack: '均值',
                         silent: true,
                         z: 10
                     }, {
                         type: 'bar',
                         data: data.map(function (d) {
                             return barHeight * 2
                         }),
                         coordinateSystem: 'polar',
                         name: '均值',
                         stack: '均值',
                         barGap: '-100%',

                         z: 10
                     }],
                     legend: {
                         show: true,
                         data: ['A', 'B', 'C']
                     }
                 };
            myChart.setOption(option);
        </script>
        <script type="text/javascript">
                var myChart = echarts.init(document.getElementById('puleftboxtmidd2'));
                option = {
                  color:['#7ecef4'],
                    backgroundColor: 'rgba(1,202,217,.2)',
                    grid: {
                              left:40,
                              right:20,
                              top:30,
                              bottom:0,
                              containLabel: true
                            },

                          xAxis: {
                              type: 'value',
                              axisLine:{
                               lineStyle:{
                                 color:'rgba(255,255,255,0)'
                               }
                             },
                             splitLine:{
                               lineStyle:{
                                 color:'rgba(255,255,255,0)'
                               }
                             },
                             axisLabel:{
                                 color:"rgba(255,255,255,0)"
                             },
                              boundaryGap: [0, 0.01]
                          },
                          yAxis: {
                              type: 'category',
                              axisLine:{
                               lineStyle:{
                                 color:'rgba(255,255,255,.5)'
                               }
                             },
                             splitLine:{
                               lineStyle:{
                                 color:'rgba(255,255,255,.1)'
                               }
                             },
                             axisLabel:{
                                 color:"rgba(255,255,255,.5)"
                             },
                              data: ['杭州','深圳','北京','广州','武汉']
                          },
                          series: [
                              {
                                  name: '2011年',
                                  type: 'bar',
                                  barWidth :20,
                                  itemStyle: {
                                      normal: {
                                          color: new echarts.graphic.LinearGradient(
                                              1, 0, 0, 1,
                                              [
                                                  {offset: 0, color: 'rgba(230,253,139,.7)'},
                                                  {offset: 1, color: 'rgba(41,220,205,.7)'}
                                              ]
                                          )
                                      }
                                  },
                                  data: [18203, 23489, 29034, 104970, 131744]
                              }
                          ]
                      };
                myChart.setOption(option);
            </script>
            <script type="text/javascript">
                    var myChart = echarts.init(document.getElementById('puleftboxtbott1'));
                    var data = [
                        [[28604,77,17099,'Australia',1990],[31163,77.4,2440,'Canada',1990],[1516,68,1605773,'China',1990],[13670,74.7,10082,'Cuba',1990],[28599,75,49805,'Finland',1990],[29476,77.1,569499,'France',1990],[31476,75.4,789237,'Germany',1990],[28666,78.1,254830,'Iceland',1990],[1777,57.7,870776,'India',1990],[29550,79.1,129285,'Japan',1990],[2076,67.9,201954,'North Korea',1990],[12087,72,42954,'South Korea',1990],[24021,75.4,33934,'New Zealand',1990],[43296,76.8,4240375,'Norway',1990],[10088,70.8,381958,'Poland',1990],[19349,69.6,1475652,'Russia',1990],[10670,67.3,53905,'Turkey',1990],[26424,75.7,57117,'United Kingdom',1990],[37062,75.4,252810,'United States',1990]],
                        [[44056,81.8,23973,'Australia',2015],[43294,81.7,35927,'Canada',2015],[13334,76.9,1376043,'China',2015],[21291,78.5,11562,'Cuba',2015],[38923,80.8,55057,'Finland',2015],[37599,81.9,64345,'France',2015],[44053,81.1,80545,'Germany',2015],[42182,82.8,329425,'Iceland',2015],[5903,66.8,1311027,'India',2015],[36162,83.5,126571,'Japan',2015],[1390,71.4,251317,'North Korea',2015],[34644,80.7,503439,'South Korea',2015],[34186,80.6,4528526,'New Zealand',2015],[64304,81.6,5210967,'Norway',2015],[24787,77.3,386194,'Poland',2015],[23038,73.13,143918,'Russia',2015],[19360,76.5,78630,'Turkey',2015],[38225,81.4,64715810,'United Kingdom',2015],[53354,79.1,321771,'United States',2015]]
                    ];

                    option = {
                        backgroundColor: 'rgba(1,202,217,.2)',
                        grid: {
            											left:60,
            											right:40,
            											top:45,
            											bottom:40
            										},
                        title: {
                          top: 5,
                          left:20,
                            textStyle:{
                              fontSize:10,
                              color:'rgba(255,255,255,.6)'
                            },
                            text: '环比类型：日环比'
                        },
                        legend: {
                            right: 10,
                            top: 5,
                            textStyle:{
                              fontSize:10,
                              color:'rgba(255,255,255,.6)'
                            },
                            data: ['1990', '2015']
                        },
                        xAxis: {
                          axisLine:{
                            lineStyle:{
                              color:'rgba(255,255,255,.2)'
                            }
                          },
                          splitLine:{
                            lineStyle:{
                              color:'rgba(255,255,255,.1)'
                            }
                          },
                          axisLabel:{
                              color:"rgba(255,255,255,.7)"
                          }
                        },
                        yAxis: {
                          axisLine:{
                            lineStyle:{
                              color:'rgba(255,255,255,.2)'
                            }
                          },
                          splitLine:{
                            lineStyle:{
                              color:'rgba(255,255,255,.1)'
                            }
                          },
                          axisLabel:{
                              color:"rgba(255,255,255,.7)"
                          },

                            scale: true
                        },
                        series: [{
                            name: '1990',
                            data: data[0],
                            type: 'scatter',
                            symbolSize: function (data) {
                                return Math.sqrt(data[2]) / 5e2;
                            },
                            label: {
                                emphasis: {
                                    show: true,
                                    formatter: function (param) {
                                        return param.data[3];
                                    },
                                    position: 'top'
                                }
                            },
                            itemStyle: {
                                normal: {
                                    shadowBlur: 10,
                                    shadowColor: 'rgba(120, 36, 50, 0.5)',
                                    shadowOffsetY: 5,
                                    color: new echarts.graphic.RadialGradient(0.4, 0.3, 1, [{
                                        offset: 0,
                                        color: 'rgb(251, 118, 123)'
                                    }, {
                                        offset: 1,
                                        color: 'rgb(204, 46, 72)'
                                    }])
                                }
                            }
                        }, {
                            name: '2015',
                            data: data[1],
                            type: 'scatter',
                            symbolSize: function (data) {
                                return Math.sqrt(data[2]) / 5e2;
                            },
                            label: {
                                emphasis: {
                                    show: true,
                                    formatter: function (param) {
                                        return param.data[3];
                                    },
                                    position: 'top'
                                }
                            },
                            itemStyle: {
                                normal: {
                                    shadowBlur: 10,
                                    shadowColor: 'rgba(25, 100, 150, 0.5)',
                                    shadowOffsetY: 5,
                                    color: new echarts.graphic.RadialGradient(0.4, 0.3, 1, [{
                                        offset: 0,
                                        color: 'rgb(129, 227, 238)'
                                    }, {
                                        offset: 1,
                                        color: 'rgb(25, 183, 207)'
                                    }])
                                }
                            }
                        }]
                    };
                    myChart.setOption(option);
                </script>
                <script type="text/javascript">
                        var myChart = echarts.init(document.getElementById('pumiddboxtbott1'));
                        option = {
                            backgroundColor: 'rgba(1,202,217,.2)',
                            grid: {
                                      left:60,
                                      right:60,
                                      top:70,
                                      bottom:40
                                    },

                      toolbox: {
                          feature: {
                              dataView: {show: true, readOnly: false},
                              magicType: {show: true, type: ['line', 'bar']},
                              restore: {show: true},
                              saveAsImage: {show: true}
                          }
                      },
                      legend: {
                        top:10,
                        textStyle:{
                          fontSize: 10,
                          color:'rgba(255,255,255,.7)'
                        },
                          data:['2017年','2018年','同比增速']
                      },
                      xAxis: [
                          {
                              type: 'category',
                              axisLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.2)'
                                }
                              },
                              splitLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.1)'
                                }
                              },
                              axisLabel:{
                                  color:"rgba(255,255,255,.7)"
                              },

                              data: ['1','2','3','4','5','6','7','8','9','10','11','12'],
                              axisPointer: {
                                  type: 'shadow'
                              }
                          }
                      ],
                      yAxis: [
                          {
                              type: 'value',
                              name: '',
                              min: 0,
                              max: 250,
                              interval: 50,
                              axisLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.3)'
                                }
                              },
                              splitLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.01)'
                                }
                              },

                              axisLabel: {
                                  formatter: '{value} ml'
                              }
                          },
                          {
                              type: 'value',
                              name: '',
                              max: 25,
                              interval: 5,
                              axisLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.3)'
                                }
                              },
                              splitLine:{
                                lineStyle:{
                                  color:'rgba(255,255,255,.1)'
                                }
                              },
                              axisLabel: {
                                  formatter: '{value} °C'
                              }
                          }
                      ],
                      series: [

                          {
                              name:'2017年',
                              type:'bar',
                              itemStyle: {
                                              normal: {
                                                  color: new echarts.graphic.LinearGradient(
                                                      0, 0, 0, 1,
                                                      [
                                                          {offset: 0, color: '#b266ff'},
                                                          {offset: 1, color: '#121b87'}
                                                      ]
                                                  )
                                              }
                                          },
                              data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
                          },
                          {
                              name:'2018年',
                              type:'bar',
                              itemStyle: {
                                              normal: {
                                                  color: new echarts.graphic.LinearGradient(
                                                      0, 0, 0, 1,
                                                      [
                                                          {offset: 0, color: '#00f0ff'},
                                                          {offset: 1, color: '#032a72'}
                                                      ]
                                                  )
                                              }
                                          },
                              data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
                          },
                          {
                              name:'同比增速',
                              type:'line',
                              itemStyle: {
                                              normal: {
                                                  color: new echarts.graphic.LinearGradient(
                                                      0, 0, 0, 1,
                                                      [
                                                          {offset: 0, color: '#fffb34'},
                                                          {offset: 1, color: '#fffb34'}
                                                      ]
                                                  )
                                              }
                                          },
                              yAxisIndex: 1,
                              data:[2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
                          }
                      ]
                  };
                        myChart.setOption(option);
                    </script>
                    <script type="text/javascript">
                            var myChart = echarts.init(document.getElementById('purightboxtop'));
                            option = {
                              color:['#76c4bf','#e5ffc7','#508097','#4d72d9'],
                                backgroundColor: 'rgba(1,202,217,.2)',
                                grid: {
                    											left:10,
                    											right:40,
                    											top:0,
                    											bottom:0,
                                          containLabel: true
                    										},
                                          // legend: {
                                          //     x : 'center',
                                          //     y : 'bottom',
                                          //     textStyle:{
                                          //       fontSize: 10,
                                          //       color:'rgba(255,255,255,.7)'
                                          //     },
                                          //     data:['涉蒙','涉疆','涉军','涉恐','涉藏','涉稳','涉警']
                                          // },
                                          calculable : true,
                                          series : [

                                              {
                                                  name:'面积模式',
                                                  type:'pie',
                                                  radius : [10, 70],
                                                  center : ['50%', '50%'],
                                                  roseType : 'area',
                                                  data:[
                                                      {value:10, name:'涉蒙'},
                                                      {value:5, name:'涉疆'},
                                                      {value:15, name:'涉军'},
                                                      {value:25, name:'涉恐'},
                                                      {value:5, name:'涉藏'},
                                                      {value:15, name:'涉稳'},
                                                      {value:15, name:'涉警'}

                                                  ]
                                              }
                                          ]
                                      };
                            myChart.setOption(option);
                        </script>
                        <script type="text/javascript">
                                var myChart = echarts.init(document.getElementById('purightboxmidd'));
                                option = {
                                  color:['#7de494','#7fd7b1', '#5578cf', '#5ebbeb', '#d16ad8','#f8e19a',  '#00b7ee', '#81dabe','#5fc5ce'],
                                    backgroundColor: 'rgba(1,202,217,.2)',

                                    grid: {
                                      left:30,
                                      right:40,
                                      top:30,
                                      bottom:20,
                                        containLabel: true
                                    },
                                    toolbox: {
                                        feature: {
                                            saveAsImage: {}
                                        }
                                    },
                                    xAxis: {
                                        type: 'category',
                                        boundaryGap: false,
                                        axisLine:{
                                          lineStyle:{
                                            color:'rgba(255,255,255,.2)'
                                          }
                                        },
                                        splitLine:{
                                          lineStyle:{
                                            color:'rgba(255,255,255,.1)'
                                          }
                                        },
                                        axisLabel:{
                                            color:"rgba(255,255,255,.7)"
                                        },
                                        data: ['6-08','6-09','6-10','6-11','6-12','6-13','6-14']
                                    },
                                    yAxis: {
                                        type: 'value',
                                        axisLine:{
                                          lineStyle:{
                                            color:'rgba(255,255,255,.2)'
                                          }
                                        },
                                        splitLine:{
                                          lineStyle:{
                                            color:'rgba(255,255,255,.1)'
                                          }
                                        },
                                        axisLabel:{
                                            color:"rgba(255,255,255,.7)"
                                        },
                                    },
                                    series: [
                                        {
                                            name:'2014年',
                                            type:'line',
                                            stack: '总量',
                                              areaStyle: {normal: {}},
                                            data:[120, 132, 101, 134, 90, 230, 210]
                                        }

                                    ]
                                    };
                                myChart.setOption(option);
                            </script>
                        <script type="text/javascript">
                                var myChart = echarts.init(document.getElementById('purightboxbott'));
                                option = {
                                  color:['#00f1fc','#00b7ee', '#5578cf', '#5ebbeb', '#d16ad8','#f8e19a',  '#00b7ee', '#81dabe','#5fc5ce'],
                                    backgroundColor: 'rgba(1,202,217,.2)',
                                    grid: {
                        											left:20,
                        											right:20,
                        											top:0,
                        											bottom:20
                        										},
                                            legend: {
                                              top:10,
                                              textStyle:{
                                                fontSize: 10,
                                                color:'rgba(255,255,255,.7)'
                                              },
                                                data:['境外','境内']
                                            },
                                            series : [
                                     {
                                         name: '访问来源',
                                         type: 'pie',
                                         radius : '55%',
                                         center: ['50%', '55%'],
                                         data:[
                                             {value:335, name:'境外'},
                                             {value:310, name:'境内'}

                                         ],
                                         itemStyle: {
                                             emphasis: {
                                                 shadowBlur: 10,
                                                 shadowOffsetX: 0,
                                                 shadowColor: 'rgba(0, 0, 0, 0.5)'
                                             }
                                         }
                                     }
                                 ]
                                };
                                myChart.setOption(option);
                            </script>

</body>
</html>
