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
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(0.96);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: scale(0.96);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
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
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"60px 7% 20px","margin":"30px auto 10px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230112/29169018b843423c8957ea726e68c749.png) no-repeat center top","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"10"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 0px","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
						<span :style='{"fontSize":"24px","lineHeight":"24px","color":"#666","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"margin":"0 8px 0 20px","fontSize":"32px","lineHeight":"24px","color":"#333"}'>近期活动推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0px 0","margin":"140px 0 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 40px","borderColor":"#eee","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"auto"}' class="list-item animation-box" v-for="(item,index) in jinqihuodongRecommend" :key="index" @click="jump('../jinqihuodong/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","borderColor":"#333","objectFit":"cover","borderRadius":"100%","borderWidth":"2px","background":"none","display":"inline-block","width":"285px","borderStyle":"dashed","height":"285px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
							<div :style='{"width":"calc(100% - 285px)","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.minsumingcheng}}</div>
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.diqu}}</div>
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.jiage}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"60px auto 0px","borderColor":"#fff","textAlign":"center","display":"inline-block","right":"7%","top":"0","borderRadius":"30px","background":"none","borderWidth":"2px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed"}' @click="jump('../jinqihuodong/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#fff","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->
				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"60px 7% 20px","margin":"30px auto 10px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230112/29169018b843423c8957ea726e68c749.png) no-repeat center top","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"10"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 0px","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
						<span :style='{"fontSize":"24px","lineHeight":"24px","color":"#666","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"margin":"0 8px 0 20px","fontSize":"32px","lineHeight":"24px","color":"#333"}'>热门客房推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0px 0","margin":"140px 0 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 40px","borderColor":"#eee","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"auto"}' class="list-item animation-box" v-for="(item,index) in remenkefangRecommend" :key="index" @click="jump('../remenkefang/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","borderColor":"#333","objectFit":"cover","borderRadius":"100%","borderWidth":"2px","background":"none","display":"inline-block","width":"285px","borderStyle":"dashed","height":"285px"}' :src="item.kefangtupian?baseurl+item.kefangtupian.split(',')[0]:''" alt="" />
							<div :style='{"width":"calc(100% - 285px)","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.kefangmingcheng}}</div>
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.diqu}}</div>
								<div :style='{"padding":"0 40px 0 0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"right","overflow":"hidden","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"100%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"68px"}' class="name">{{item.jiage}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"60px auto 0px","borderColor":"#fff","textAlign":"center","display":"inline-block","right":"7%","top":"0","borderRadius":"30px","background":"none","borderWidth":"2px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed"}' @click="jump('../remenkefang/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#fff","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
				<!-- 系统简介 -->
				<div :style='{"padding":"0 0 0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"70px 7% 10px 0","borderColor":"#eee","alignItems":"flex-start","display":"flex","justifyContent":"flex-start","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"32%","position":"relative","borderStyle":"solid","height":"auto","order":"3"}'>
					<div :style='{"padding":"20px 20px 0","margin":"20px auto 20px","borderColor":"#DF8A83","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230112/386f2f8213f945c8b81e21886c653274.png) no-repeat center top / 100% auto","borderWidth":"0px","width":"100%","fontSize":"16px","borderStyle":"double","fontWeight":"500","height":"68px","order":"8"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"margin":"0 0 20px","color":"#999","textAlign":"center","display":"none","width":"100%","lineHeight":"1.5","fontSize":"20px"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"padding":"0 0px","flexWrap":"wrap","display":"flex","width":"100%","justifyContent":"space-between","height":"auto","order":"1"}'>
						<img :style='{"padding":"10px","margin":"0 0px","borderColor":"#ccc","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"#fff","display":"block","width":"100%","borderStyle":"dashed","height":"212px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"0px 0px 0","borderColor":"#bdefb6","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"#fff","display":"none","width":"48%","borderStyle":"solid","height":"250px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"1px solid #bdefb6","padding":"10px","margin":"208px 0px 0","objectFit":"cover","display":"none","width":"24%","height":"150px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"border":"0px solid #e6e6e6","padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0","color":"rgb(102, 102, 102)","textIndent":"2em","overflow":"hidden","background":"#fff","width":"100%","lineHeight":"2","fontSize":"14px","height":"212px","order":"2"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"10px 7% 10px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"none","borderWidth":"0px","flex":"1","display":"block","width":"45%","position":"relative","borderStyle":"solid","order":"2"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 20px 10px","margin":"60px auto 20px","borderColor":"#DF8A83","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230112/29169018b843423c8957ea726e68c749.png) no-repeat center bottom / 100% auto","flexDirection":"inherit","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"double","height":"80px"}'>
						<span :style='{"fontSize":"14px","lineHeight":"24px","color":"#666","display":"inline-block","order":"2"}'>HOME NEWS</span>
						<span :style='{"margin":"0 8px 0 0","fontSize":"18px","lineHeight":"24px","color":"#333","display":"inline-block"}'>新闻资讯</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"10px 0px","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"border":"0px solid #e6e6e6","cursor":"pointer","padding":"0px","margin":"0 0px","background":"#fff","width":"48%","position":"relative","height":"auto"}' class="new10-list-item animation-box">
							<img :style='{"width":"100%","boxShadow":"0px 56px 36px -60px #999","objectFit":"cover","display":"block","height":"254px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#a1c842","background":"none","width":"calc(100% - 80px)","fontSize":"16px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 10px","overflow":"hidden","color":"#666","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"10px","color":"#a1c842","top":"270px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"margin":"0 0px","background":"none","flexDirection":"column","display":"flex","width":"48%","position":"relative","justifyContent":"space-between","height":"auto"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"border":"0px solid #e6e6e6","cursor":"pointer","width":"100%","position":"relative","background":"#fff","height":"120px"}' class="new10-list-item animation-box">
								<div :style='{"padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#ff8503","background":"none","width":"calc(100% - 80px)","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 10px","margin":"0 auto","overflow":"hidden","color":"#666","background":"none","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"10px","color":"#e3aa80","top":"4px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 10px","margin":"76px auto","borderColor":"#fff","textAlign":"center","display":"inline-block","right":"20px","top":"0","borderRadius":"30px","background":"none","borderWidth":"1px","width":"auto","lineHeight":"36px","position":"absolute","borderStyle":"dashed"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#fff","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"60px 7% 10px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"10px auto 20px","borderColor":"#eee","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230112/d8acb76571644f5f8431b02b55809c9f.png) no-repeat center top","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"8"}'>
					<div :style='{"padding":"0 10px","margin":"0 auto 20px","borderColor":"#DF8A83","color":"#333","textAlign":"right","background":"none","borderWidth":"0px","width":"50%","lineHeight":"50px","fontSize":"32px","borderStyle":"double","float":"left"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0 auto 20px","borderColor":"#DF8A83","color":"#666","textAlign":"left","display":"block","float":"right","borderWidth":"0 0 0px","background":"none","width":"50%","lineHeight":"50px","fontSize":"24px","borderStyle":"double","textTransform":"uppercase"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"width":"48%","padding":"0 0 0 0px","float":"left","flexWrap":"wrap","display":"flex","height":"auto"}'>
						<img :style='{"padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0px","borderColor":"#ccc","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"rgba(255,255,255,1)","display":"block","width":"100%","borderStyle":"dashed","height":"312px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"border":"1px solid #e6e6e6","padding":"10px","margin":"20px 0 0","objectFit":"cover","background":"#fff","display":"none","width":"100%","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 0px 0px 0","borderColor":"#eee","color":"#333","textIndent":"2em","float":"right","overflow":"hidden","borderRadius":"0","background":"rgba(255,255,255,1)","borderWidth":"1px","width":"48%","lineHeight":"24px","fontSize":"14px","borderStyle":"solid","height":"312px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"70px","left":"calc(0px)","background":"url(http://codegen.caihongy.cn/20230106/5d0a7d8d50bf45ee9001a5dc0520739f.png) no-repeat center center / 100% 100%","display":"none","width":"48%","position":"absolute","height":"250px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"20px 7% 0","margin":"20px auto 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230112/386f2f8213f945c8b81e21886c653274.png) no-repeat center bottom","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"1"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 20px","borderColor":"#f6cccc","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
					  <span :style='{"padding":"0 20px 0 0","fontSize":"24px","lineHeight":"24px","color":"#666","background":"none","order":"2"}'>DATA SHOW</span>
					  <span :style='{"margin":"0 8px 0 20px","fontSize":"32px","lineHeight":"24px","color":"#333","background":"none"}'>近期活动展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div :style='{"padding":"0 0 240px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","minWidth":"1200px","justifyContent":"space-between","height":"auto"}' class="list  list-9">
						<div :style='{"width":"49%","margin":"0 0 20px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}' class="list-4-body">
							<div v-if="jinqihuodongList.length>0" @click="jump('../jinqihuodong/detail.jsp?id='+jinqihuodongList[0].id)" class="list-4-item animation-box item-1" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"auto"}'>
								<img :style='{"border":"2px dashed #333","padding":"10px","margin":"0 0 10px","objectFit":"cover","borderRadius":"100%","width":"285px","float":"left","height":"285px"}' :src="jinqihuodongList[0].tupian?baseurl+jinqihuodongList[0].tupian.split(',')[0]:''" alt="" />
								<div :style='{"padding":"0 40px 0 0","margin":"0 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"90%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","height":"68px"}' class="list-4-item-title">
                                    <div>{{jinqihuodongList[0].minsumingcheng}}</div>
                                    <div>{{jinqihuodongList[0].diqu}}</div>
                                    <div>{{jinqihuodongList[0].jiage}}</div>
                                </div>
							</div>
							<div v-if="jinqihuodongList.length>1" @click="jump('../jinqihuodong/detail.jsp?id='+jinqihuodongList[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"48%","margin":"60px 0px 0","position":"relative","display":"inline-block","height":"auto"}'>
								<img :style='{"border":"2px dashed #333","padding":"10px","margin":"0 0 10px","objectFit":"cover","borderRadius":"100%","width":"285px","float":"left","height":"285px"}' :src="jinqihuodongList[1].tupian?baseurl+jinqihuodongList[1].tupian.split(',')[0]:''" alt="" />
								<div :style='{"padding":"0 40px 0 0","margin":"0 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"90%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","height":"68px"}' class="list-4-item-title">
                                    <div>{{jinqihuodongList[1].minsumingcheng}}</div>
                                    <div>{{jinqihuodongList[1].diqu}}</div>
                                    <div>{{jinqihuodongList[1].jiage}}</div>
                                </div>
							</div>
						</div>
					    <div :style='{"width":"49%","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}' class="list-4-body">
							<div v-if="jinqihuodongList.length>2" @click="jump('../jinqihuodong/detail.jsp?id='+jinqihuodongList[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","height":"auto"}'>
								<img :style='{"border":"2px dashed #333","padding":"10px","margin":"0 0 10px","objectFit":"cover","borderRadius":"100%","width":"285px","float":"left","height":"285px"}' :src="jinqihuodongList[2].tupian?baseurl+jinqihuodongList[2].tupian.split(',')[0]:''" alt="" />
								<div :style='{"padding":"0 40px 0 0","margin":"0 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"90%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","height":"68px"}' class="list-4-item-title">
                                    <div>{{jinqihuodongList[2].minsumingcheng}}</div>
                                    <div>{{jinqihuodongList[2].diqu}}</div>
                                    <div>{{jinqihuodongList[2].jiage}}</div>
                                </div>
							</div>
							<div v-if="jinqihuodongList.length>3" @click="jump('../jinqihuodong/detail.jsp?id='+jinqihuodongList[3].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"48%","margin":"40px 0px 0","position":"relative","height":"auto"}'>
								<img :style='{"border":"2px dashed #333","padding":"10px","margin":"0 0 10px","objectFit":"cover","borderRadius":"100%","width":"285px","float":"left","height":"285px"}' :src="jinqihuodongList[3].tupian?baseurl+jinqihuodongList[3].tupian.split(',')[0]:''" alt="" />
								<div :style='{"padding":"0 40px 0 0","margin":"0 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230112/71572c80be344dfc9b3c7ebecf07a4c5.png) no-repeat center top / 100% 100%","width":"90%","lineHeight":"50px","fontSize":"18px","textOverflow":"ellipsis","height":"68px"}' class="list-4-item-title">
                                    <div>{{jinqihuodongList[3].minsumingcheng}}</div>
                                    <div>{{jinqihuodongList[3].diqu}}</div>
                                    <div>{{jinqihuodongList[3].jiage}}</div>
                                </div>
							</div>
							<div v-if="jinqihuodongList.length>4" @click="jump('../jinqihuodong/detail.jsp?id='+jinqihuodongList[4].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"32%","margin":"0 0px","position":"relative","display":"none","height":"auto"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="jinqihuodongList[4].tupian?baseurl+jinqihuodongList[4].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{jinqihuodongList[4].minsumingcheng}}</div>
                                    <div>{{jinqihuodongList[4].diqu}}</div>
                                    <div>{{jinqihuodongList[4].jiage}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto 40px","borderColor":"#b5e8af","textAlign":"center","display":"inline-block","right":"7%","top":"0","borderRadius":"30px","background":"none","borderWidth":"2px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed"}' @click="jump('../jinqihuodong/list.jsp')">
						<span :style='{"color":"#71bf03","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#71bf03","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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


                    // 推荐数据
					jinqihuodongRecommend: [],
                    // 推荐数据
					remenkefangRecommend: [],



                    jinqihuodongList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "jinqihuodong/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.jinqihuodongRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendjinqihuodong', options)
								new Swiper ('#recommendremenkefang', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperjinqihuodong', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                // 获取推荐信息
      				var autoSortUrl = "remenkefang/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "remenkefang/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.remenkefangRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendjinqihuodong', options)
								new Swiper ('#recommendremenkefang', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperremenkefang', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`jinqihuodong/list`, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.jinqihuodongList = res.data.list
					
					let flag = 9;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsjinqihuodong', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperjinqihuodong', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
