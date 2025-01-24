<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"民宿员工","menuJump":"列表","tableName":"minsuyuangong"}],"menu":"民宿员工管理"},{"child":[{"appFrontIcon":"cuIcon-shop","buttons":["新增","查看","修改","删除"],"menu":"近期活动","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"客房类型","menuJump":"列表","tableName":"kefangleixing"}],"menu":"客房类型管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","修改","删除","查看评论"],"menu":"热门客房","menuJump":"列表","tableName":"remenkefang"}],"menu":"热门客房管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","修改","删除","报表"],"menu":"房间预定","menuJump":"列表","tableName":"fangjianyuding"}],"menu":"房间预定管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","修改","删除"],"menu":"预约服务","menuJump":"列表","tableName":"yuyuefuwu"}],"menu":"预约服务管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看","修改","删除","报表"],"menu":"退房结账","menuJump":"列表","tableName":"tuifangjiezhang"}],"menu":"退房结账管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除","审核"],"menu":"投诉反馈","menuJump":"列表","tableName":"tousufankui"}],"menu":"投诉反馈管理"},{"child":[{"appFrontIcon":"cuIcon-message","buttons":["查看","修改","回复","删除"],"menu":"留言板","tableName":"messages"}],"menu":"留言板"},{"child":[{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线客服","tableName":"chat"},{"appFrontIcon":"cuIcon-vip","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看"],"menu":"近期活动列表","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","查看评论","预定"],"menu":"热门客房列表","menuJump":"列表","tableName":"remenkefang"}],"menu":"热门客房模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","修改","删除","预约服务"],"menu":"房间预定","menuJump":"列表","tableName":"fangjianyuding"}],"menu":"房间预定管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除"],"menu":"预约服务","menuJump":"列表","tableName":"yuyuefuwu"}],"menu":"预约服务管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看","删除","支付"],"menu":"退房结账","menuJump":"列表","tableName":"tuifangjiezhang"}],"menu":"退房结账管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["新增","查看","修改","删除"],"menu":"投诉反馈","menuJump":"列表","tableName":"tousufankui"}],"menu":"投诉反馈管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看"],"menu":"近期活动列表","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","查看评论","预定"],"menu":"热门客房列表","menuJump":"列表","tableName":"remenkefang"}],"menu":"热门客房模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-shop","buttons":["新增","查看","修改","删除"],"menu":"近期活动","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"热门客房","menuJump":"列表","tableName":"remenkefang"}],"menu":"热门客房管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","删除","退房结账"],"menu":"房间预定","menuJump":"列表","tableName":"fangjianyuding"}],"menu":"房间预定管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["删除","查看","审核"],"menu":"预约服务","menuJump":"列表","tableName":"yuyuefuwu"}],"menu":"预约服务管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["删除","查看"],"menu":"退房结账","menuJump":"列表","tableName":"tuifangjiezhang"}],"menu":"退房结账管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看"],"menu":"近期活动列表","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","查看评论","预定"],"menu":"热门客房列表","menuJump":"列表","tableName":"remenkefang"}],"menu":"热门客房模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"民宿员工","tableName":"minsuyuangong"}];

var hasMessage = '是';
