<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 30px 0 0;
						color: #333;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						border-radius: 30px;
						background: none;
						width: auto;
						border-width: 2px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 30px 0 0;
						color: #333;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						background: #a1c842;
						width: auto;
						border-width: 2px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 30px 0 0;
						color: #333;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						border-radius: 30px;
						background: #a1c842;
						width: auto;
						border-width: 2px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"margin":"0px auto","alignItems":"flex-start","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee","borderColor":"#e6e6e6","margin":"0","display":"flex","justifyContent":"space-between","overflow":"hidden","borderRadius":"4px","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #bdefb6","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0px 0 20px 7%","margin":"20px auto 0","borderRadius":"0","background":"none","width":"48%","order":"1","height":"480px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"0","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"width":"100%","margin":"0 auto","objectFit":"cover","borderRadius":"0","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"480px","padding":"20px 0px 20px","margin":"0px 7% 0","borderColor":"#e6e6e6","background":"rgba(255,255,255,.0)","borderWidth":"0px","flex":"1","width":"100%","borderStyle":"solid","order":"2"}'>
						<div :style='{"padding":"0px 7%","margin":"0 0 10px","borderColor":"#FF7373","alignItems":"center","display":"inline-block","justifyContent":"space-between","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230112/d8acb76571644f5f8431b02b55809c9f.png) no-repeat center bottom","borderWidth":"0px","width":"100%","lineHeight":"120px","borderStyle":"solid","height":"180px"}'>
							<div :style='{"fontSize":"32px","color":"#333","float":"left","display":"inline-block"}'>{{title}}</div>
						</div>



						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#87af25","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"44px","minWidth":"130px","height":"44px"}'>用户账号：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.yonghuzhanghao}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#87af25","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"44px","minWidth":"130px","height":"44px"}'>用户姓名：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.yonghuxingming}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#87af25","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"44px","minWidth":"130px","height":"44px"}'>手机：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shouji}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#87af25","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"44px","minWidth":"130px","height":"44px"}'>身份证号：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shenfenzhenghao}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 7%","flexWrap":"wrap","background":"none","display":"flex"}'>

						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"minHeight":"500px","padding":"0","boxShadow":"none","margin":"20px 7% 0","borderColor":"#e6e6e6","overflow":"hidden","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230112/d8acb76571644f5f8431b02b55809c9f.png) repeat-x center top / 100% 120px","borderWidth":"0px","width":"100%","borderStyle":"solid","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"30px 10px 0","borderColor":"#c5ddfb","textAlign":"center","background":"none","borderWidth":"0px","fontSize":"0","borderStyle":"solid","height":"140px"}'>

						<li class="layui-this">反馈意见</li>
						<li>评价意见</li>










					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">

						<div class="layui-tab-item layui-show">
							<div v-html="detail.fankuiyijian"></div>
						</div>
						<div class="layui-tab-item">
							<div v-html="detail.pingjiayijian"></div>
						</div>











					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'tousufankui',
					baseurl: '',
					// 评论列表
					dataList: [],
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`tousufankui`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '620px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '48%',
							height: '480px',
							anim: 'fade',
							autoplay: 'true',
							interval: '5000',
							arrow: 'none',
							indicator: 'inside'
						});
					})


				});





			});
		</script>
	</body>
</html>
