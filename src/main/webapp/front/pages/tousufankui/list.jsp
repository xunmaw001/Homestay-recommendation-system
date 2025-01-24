<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 投诉反馈 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>投诉反馈</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border-radius: 0px;
						padding: 0 20px 0 10px;
						margin: 0;
						color: #666;
						width: 120px;
						font-size: 14px;
						border-color: #ffc303;
						border-width: 1px;
						line-height: 40px;
						border-style: solid;
						height: 40px;
					}
		
		/* lists */
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: scale(0.96);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1.01);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">投诉反馈展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>

					
				<form class="layui-form filter" :style='{"padding":"10px 7% 0","margin":"0 0 10px","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto"}'>


					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 8px 0 4px","borderColor":"#8bb12f","color":"#333","outline":"none","borderRadius":"0px","background":"#a1c842","borderWidth":"2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#ffaf03","color":"#333","outline":"none","borderRadius":"0px","background":"#ffc303","borderWidth":"2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-if="isAuth('tousufankui','新增')" @click="jump('../tousufankui/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"width":"100%","margin":"40px 0 10px","minWidth":"1050px","background":"none","flex":"1","order":"3"}' class="lists">
					<!-- 样式二 -->
					<div :style='{"padding":"0 7%","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee,inset 0px 0px 0px 0px #eee","margin":"0 0 40px","borderColor":"#eee","display":"flex","justifyContent":"space-between","borderRadius":"0","flexWrap":"wrap","background":"rgba(255,255,255,.6)","borderWidth":"0px","width":"49%","position":"relative","borderStyle":"solid","height":"auto"}' @click="jump('../tousufankui/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<div :style='{"width":"calc(100% - 285px)","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div v-if="item.price" :style='{"padding":"10px 40px 10px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">￥{{Number(item.price).toFixed(2)}}</div>
								<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"10px 40px 10px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
								<div v-if="item.jf" :style='{"padding":"10px 40px 10px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">{{Number(item.jf).toFixed(0)}}积分</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],

					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
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
						vue.swiperList = swiperList;
						
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



				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList() {
					var param = {
						page: 1,
						limit: limit
					}



			        param['sfsh'] = '是';

					// 获取列表数据
					http.request('tousufankui/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('tousufankui/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
