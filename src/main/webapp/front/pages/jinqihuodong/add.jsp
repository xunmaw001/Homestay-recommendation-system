<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #666;
						font-size: 14px;
						border-color: #ffc303;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: #fff;
						width: 360px;
						border-width: 0 0 1px;
						border-style: solid;
						height: 40px;
					}
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"30px 7% 40px","margin":"10px auto","position":"relative","background":"rgba(255,255,255,.0)"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">活动编号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.huodongbianhao" type="text" :readonly="ro.huodongbianhao" name="huodongbianhao" id="huodongbianhao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">活动标题：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.huodongbiaoti" type="text" :readonly="ro.huodongbiaoti" name="huodongbiaoti" id="huodongbiaoti" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">图片：</div>
						<img :style='{"width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"80px"}' v-if="detail.tupian" id="tupianImg" :src="baseurl+detail.tupian">
						<input v-if="detail.tupian" type="hidden" :value="detail.tupian" id="tupian" name="tupian" />
						<button v-if="!ro.tupian" :style='{"cursor":"pointer","border":"0","padding":"0px 20px","margin":"0","borderColor":"#86bae6","color":"#fff","minWidth":"100px","outline":"none","borderRadius":"20px","background":"#87af25","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="tupianUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#fff","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">民宿名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.minsumingcheng" type="text" :readonly="ro.minsumingcheng" name="minsumingcheng" id="minsumingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">地区：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.diqu" type="text" :readonly="ro.diqu" name="diqu" id="diqu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">价格：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jiage" type="text" :readonly="ro.jiage" name="jiage" id="jiage" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">活动时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="huodongshijian" id="huodongshijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">员工工号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yuangonggonghao" type="text" :readonly="ro.yuangonggonghao" name="yuangonggonghao" id="yuangonggonghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">员工姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yuangongxingming" type="text" :readonly="ro.yuangongxingming" name="yuangongxingming" id="yuangongxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">联系电话：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.lianxidianhua" type="text" :readonly="ro.lianxidianhua" name="lianxidianhua" id="lianxidianhua" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#87af25","textAlign":"right"}' class="label">内容：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ddd","backgroundColor":"rgba(255,255,255,.8)","borderRadius":"0","borderWidth":"1px","width":"88%","borderStyle":"solid","height":"auto"}' name="neirong" id="neirong">请输入内容</textarea>
					</div>

					<div :style='{"margin":"0 0 0 0px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#75991d","color":"#111","minWidth":"120px","outline":"none","borderRadius":"30px","background":"#a1c842","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#ffa303","color":"#333","minWidth":"120px","outline":"none","borderRadius":"30px","background":"#ffc303","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        huodongbianhao : false,
                                        huodongbiaoti : false,
                                        tupian : false,
                                        neirong : false,
                                        minsumingcheng : false,
                                        diqu : false,
                                        jiage : false,
                                        huodongshijian : false,
                                        yuangonggonghao : false,
                                        yuangongxingming : false,
                                        lianxidianhua : false,
                                        clicktime : false,
                                        clicknum : false,
					},
                    detail: {
                        huodongbianhao: '',
                        huodongbiaoti: '',
                        tupian: '',
                        neirong: '',
                        minsumingcheng: '',
                        diqu: '',
                        jiage: '',
                        huodongshijian: '',
                        yuangonggonghao: '',
                        yuangongxingming: '',
                        lianxidianhua: '',
                        clicktime: '',
                        clicknum: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
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
				// 上传图片
				var tupianUpload = upload.render({
					//绑定元素
					elem: '#tupianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#tupian').val(url);
							jquery('#tupianImg').attr('src', http.baseurl +url)
							vue.detail.tupian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var edit = tinymce.render({
                    elem: "#neirong",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				laydate.render({
					elem: '#huodongshijian'
				});
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='minsumingcheng'){
                                vue.detail['minsumingcheng'] = data[`${key}`]
                                vue.ro.minsumingcheng = true;
                                continue;
                        }
                        if(key=='yuangonggonghao'){
                                vue.detail['yuangonggonghao'] = data[`${key}`]
                                vue.ro.yuangonggonghao = true;
                                continue;
                        }
                        if(key=='yuangongxingming'){
                                vue.detail['yuangongxingming'] = data[`${key}`]
                                vue.ro.yuangongxingming = true;
                                continue;
                        }
                        if(key=='lianxidianhua'){
                                vue.detail['lianxidianhua'] = data[`${key}`]
                                vue.ro.lianxidianhua = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='huodongbianhao'){
                                vue.detail[o] = obj[o];
                                vue.ro.huodongbianhao = true;
                                continue;
                        }
                        if(o=='huodongbiaoti'){
                                vue.detail[o] = obj[o];
                                vue.ro.huodongbiaoti = true;
                                continue;
                        }
                        if(o=='tupian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.tupian = true;
                                continue;
                        }
                        if(o=='neirong'){
                                vue.detail[o] = obj[o];
                                vue.ro.neirong = true;
                                continue;
                        }
                        if(o=='minsumingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.minsumingcheng = true;
                                continue;
                        }
                        if(o=='diqu'){
                                vue.detail[o] = obj[o];
                                vue.ro.diqu = true;
                                continue;
                        }
                        if(o=='jiage'){
                                vue.detail[o] = obj[o];
                                vue.ro.jiage = true;
                                continue;
                        }
                        if(o=='huodongshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.huodongshijian = true;
                                jquery('#huodongshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='yuangonggonghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.yuangonggonghao = true;
                                continue;
                        }
                        if(o=='yuangongxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.yuangongxingming = true;
                                continue;
                        }
                        if(o=='lianxidianhua'){
                                vue.detail[o] = obj[o];
                                vue.ro.lianxidianhua = true;
                                continue;
                        }
                        if(o=='clicktime'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicktime = true;
                                jquery('#clicktime').val(obj[o]);
                                continue;
                        }
                        if(o=='clicknum'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicknum = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
					var neirong = tinymce.get('#neirong').getContent()
					data.neirong = neirong;
                    if(!isIntNumer(data.jiage)){
                        layer.msg('价格应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('jinqihuodong/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('jinqihuodong' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('jinqihuodong' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
