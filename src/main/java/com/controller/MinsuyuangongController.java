package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.MinsuyuangongEntity;
import com.entity.view.MinsuyuangongView;

import com.service.MinsuyuangongService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 民宿员工
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-08 16:27:04
 */
@RestController
@RequestMapping("/minsuyuangong")
public class MinsuyuangongController {
    @Autowired
    private MinsuyuangongService minsuyuangongService;



    
	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		MinsuyuangongEntity u = minsuyuangongService.selectOne(new EntityWrapper<MinsuyuangongEntity>().eq("yuangonggonghao", username));
		if(u==null || !u.getMima().equals(password)) {
			return R.error("账号或密码不正确");
		}
		String token = tokenService.generateToken(u.getId(), username,"minsuyuangong",  "民宿员工" );
		return R.ok().put("token", token);
	}

	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody MinsuyuangongEntity minsuyuangong){
    	//ValidatorUtils.validateEntity(minsuyuangong);
    	MinsuyuangongEntity u = minsuyuangongService.selectOne(new EntityWrapper<MinsuyuangongEntity>().eq("yuangonggonghao", minsuyuangong.getYuangonggonghao()));
		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		minsuyuangong.setId(uId);
        minsuyuangongService.insert(minsuyuangong);
        return R.ok();
    }

	
	/**
	 * 退出
	 */
	@RequestMapping("/logout")
	public R logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return R.ok("退出成功");
	}
	
	/**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
    	Long id = (Long)request.getSession().getAttribute("userId");
        MinsuyuangongEntity u = minsuyuangongService.selectById(id);
        return R.ok().put("data", u);
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	MinsuyuangongEntity u = minsuyuangongService.selectOne(new EntityWrapper<MinsuyuangongEntity>().eq("yuangonggonghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima("123456");
        minsuyuangongService.updateById(u);
        return R.ok("密码已重置为：123456");
    }


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MinsuyuangongEntity minsuyuangong, 
		HttpServletRequest request){

        EntityWrapper<MinsuyuangongEntity> ew = new EntityWrapper<MinsuyuangongEntity>();

    	PageUtils page = minsuyuangongService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, minsuyuangong), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MinsuyuangongEntity minsuyuangong, 
		HttpServletRequest request){
        EntityWrapper<MinsuyuangongEntity> ew = new EntityWrapper<MinsuyuangongEntity>();

    	PageUtils page = minsuyuangongService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, minsuyuangong), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MinsuyuangongEntity minsuyuangong){
       	EntityWrapper<MinsuyuangongEntity> ew = new EntityWrapper<MinsuyuangongEntity>();
      	ew.allEq(MPUtil.allEQMapPre( minsuyuangong, "minsuyuangong")); 
        return R.ok().put("data", minsuyuangongService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MinsuyuangongEntity minsuyuangong){
        EntityWrapper< MinsuyuangongEntity> ew = new EntityWrapper< MinsuyuangongEntity>();
 		ew.allEq(MPUtil.allEQMapPre( minsuyuangong, "minsuyuangong")); 
		MinsuyuangongView minsuyuangongView =  minsuyuangongService.selectView(ew);
		return R.ok("查询民宿员工成功").put("data", minsuyuangongView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MinsuyuangongEntity minsuyuangong = minsuyuangongService.selectById(id);
        return R.ok().put("data", minsuyuangong);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MinsuyuangongEntity minsuyuangong = minsuyuangongService.selectById(id);
        return R.ok().put("data", minsuyuangong);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MinsuyuangongEntity minsuyuangong, HttpServletRequest request){
    	minsuyuangong.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(minsuyuangong);
    	MinsuyuangongEntity u = minsuyuangongService.selectOne(new EntityWrapper<MinsuyuangongEntity>().eq("yuangonggonghao", minsuyuangong.getYuangonggonghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}

		minsuyuangong.setId(new Date().getTime());
        minsuyuangongService.insert(minsuyuangong);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MinsuyuangongEntity minsuyuangong, HttpServletRequest request){
    	minsuyuangong.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(minsuyuangong);
    	MinsuyuangongEntity u = minsuyuangongService.selectOne(new EntityWrapper<MinsuyuangongEntity>().eq("yuangonggonghao", minsuyuangong.getYuangonggonghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}

		minsuyuangong.setId(new Date().getTime());
        minsuyuangongService.insert(minsuyuangong);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MinsuyuangongEntity minsuyuangong, HttpServletRequest request){
        //ValidatorUtils.validateEntity(minsuyuangong);
        minsuyuangongService.updateById(minsuyuangong);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        minsuyuangongService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<MinsuyuangongEntity> wrapper = new EntityWrapper<MinsuyuangongEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = minsuyuangongService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	








}
