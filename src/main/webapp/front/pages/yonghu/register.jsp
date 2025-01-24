<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#registerForm .form-item .layui-form-select .layui-input {
						border-radius: 0px;
						padding: 0 10px;
						outline: none;
						color: #333;
						width: 100%;
						font-size: 14px;
						border-color: #ffc303;
						border-width: 0 0 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="register" class="register" :style='{"minHeight":"100vh","padding":"10px 0 80px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230113/40f598e8fec44a46ad02a3ebb044efb5.jpg) no-repeat center top /  100% 100%,#fff","display":"flex","width":"100%","justifyContent":"center"}'>
			<form id="registerForm" class="layui-form login-form" :style='{"padding":"0 40px 40px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"0 auto","borderColor":"#85a92d #aad04e #85a92d #aad04e","display":"flex","justifyContent":"flex-start","outline":"0px solid #eee","borderRadius":"0px","outlineOffset":"0px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230112/04f09805676347b69686b77e068e3b89.png) repeat-x center top / auto 80px,#fff","borderWidth":"0px 1px 1px 1px","width":"800px","position":"relative","borderStyle":"solid dashed dashed","height":"auto"}' lay-filter="myForm">
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#5fa6d0","textAlign":"center","display":"none","width":"100%","fontSize":"22px","lineHeight":"44px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 auto 20px","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#333","borderRadius":"0","textAlign":"center","background":"none","borderWidth":"0px","width":"700px","lineHeight":"68px","fontSize":"20px","borderStyle":"solid"}'>用户注册</p></div>
			

				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>用户账号：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="yonghuzhanghao" name="yonghuzhanghao" placeholder="请输入用户账号" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>密码：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
                    <div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>确认密码：</div>
                    <input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima2" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>用户姓名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="yonghuxingming" name="yonghuxingming" placeholder="请输入用户姓名" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"40px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                    <div :style='{"alignItems":"center","display":"flex"}'>
						<img id="touxiangImg" :style='{"width":"150px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"4px","height":"80px"}' src="../../img/avator.png">
						<input type="hidden" id="touxiang" name="touxiang" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#98c6e2","color":"#fff","minWidth":"110px","outline":"none","borderRadius":"30px","background":"#87af25","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#fff","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
                </div>
                <div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>性别：</div>
                    <select name="xingbie" id="xingbie" >
                        <option value="">请选择性别</option>
                        <option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
                    </select>
                </div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>年龄：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="nianling" name="nianling" placeholder="请输入年龄" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>手机：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="shouji" name="shouji" placeholder="请输入手机" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>身份证号：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ffc303","color":"#333","borderRadius":"0px","borderWidth":"0 0 1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="shenfenzhenghao" name="shenfenzhenghao" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
				</div>

				<button :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0px 0px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#333","bottom":"-85px","display":"block","outline":"none","borderRadius":"30px","left":"150px","background":"#a1c842","borderWidth":"0px","width":"120px","fontSize":"16px","position":"absolute","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
				<button :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0 0px","borderColor":"#98c6e2","color":"#333","bottom":"-85px","display":"block","outline":"none","borderRadius":"30px","left":"330px","background":"#ffc303","borderWidth":"0px","width":"120px","fontSize":"16px","position":"absolute","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a :style='{"cursor":"pointer","padding":"0 10px","borderColor":"#98c6e2","color":"#333","textAlign":"right","bottom":"-85px","display":"inline-block","textDecoration":"none","borderRadius":"30px","left":"510px","background":"#ffc303","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"44px","position":"absolute","borderStyle":"solid","height":"44px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
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
        <script src="../../js/xm-select.js"></script>
				<script>
			var vue = new Vue({
			  el: '#register',
              data: {
                    xingbie : '男,女'.split(','),
              },
              updated: function() {
                  layui.form.render(null, 'myForm');
              },
			  methods: {
				
			  }
			});
			
            layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
                var layer = layui.layer;
                var element = layui.element;
                var carousel = layui.carousel;
                var http = layui.http;
                var jquery = layui.jquery;
                var form = layui.form;
                var upload = layui.upload;
                var laydate = layui.laydate;
				var tablename = http.getParam('tablename');


                // 上传图片
                var touxiangUpload = upload.render({
                    //绑定元素
                    elem: '#touxiangUpload',
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
                            jquery('#touxiang').val(url);
                            jquery('#touxiangImg').attr('src', http.baseurl+url)
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
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!data.yonghuzhanghao){
                        layer.msg('用户账号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.mima){
                        layer.msg('密码不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.yonghuxingming){
                        layer.msg('用户姓名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.nianling)){
                        layer.msg('年龄应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isMobile(data.shouji)){
                        layer.msg('手机应输入手机格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIdentity(data.shenfenzhenghao)){
                        layer.msg('身份证号应输入身份证格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

                    if(data.mima!=data.mima2) {
                        layer.msg('两次密码输入不一致', {
                                time: 2000,
                                icon: 5
                        });
                        return false
                    }

                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
