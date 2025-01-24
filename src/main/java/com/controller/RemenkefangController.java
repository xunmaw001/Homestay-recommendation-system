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

import com.entity.RemenkefangEntity;
import com.entity.view.RemenkefangView;

import com.service.RemenkefangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 热门客房
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
@RestController
@RequestMapping("/remenkefang")
public class RemenkefangController {
    @Autowired
    private RemenkefangService remenkefangService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,RemenkefangEntity remenkefang, 
                @RequestParam(required = false) Double jiagestart,
                @RequestParam(required = false) Double jiageend,
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("minsuyuangong")) {
			remenkefang.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<RemenkefangEntity> ew = new EntityWrapper<RemenkefangEntity>();
                if(jiagestart!=null) ew.ge("jiage", jiagestart);
                if(jiageend!=null) ew.le("jiage", jiageend);

    	PageUtils page = remenkefangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, remenkefang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,RemenkefangEntity remenkefang, 
                @RequestParam(required = false) Double jiagestart,
                @RequestParam(required = false) Double jiageend,
		HttpServletRequest request){
        EntityWrapper<RemenkefangEntity> ew = new EntityWrapper<RemenkefangEntity>();
                if(jiagestart!=null) ew.ge("jiage", jiagestart);
                if(jiageend!=null) ew.le("jiage", jiageend);

    	PageUtils page = remenkefangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, remenkefang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( RemenkefangEntity remenkefang){
       	EntityWrapper<RemenkefangEntity> ew = new EntityWrapper<RemenkefangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( remenkefang, "remenkefang")); 
        return R.ok().put("data", remenkefangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(RemenkefangEntity remenkefang){
        EntityWrapper< RemenkefangEntity> ew = new EntityWrapper< RemenkefangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( remenkefang, "remenkefang")); 
		RemenkefangView remenkefangView =  remenkefangService.selectView(ew);
		return R.ok("查询热门客房成功").put("data", remenkefangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        RemenkefangEntity remenkefang = remenkefangService.selectById(id);
		remenkefang.setClicknum(remenkefang.getClicknum()+1);
		remenkefang.setClicktime(new Date());
		remenkefangService.updateById(remenkefang);
        return R.ok().put("data", remenkefang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        RemenkefangEntity remenkefang = remenkefangService.selectById(id);
		remenkefang.setClicknum(remenkefang.getClicknum()+1);
		remenkefang.setClicktime(new Date());
		remenkefangService.updateById(remenkefang);
        return R.ok().put("data", remenkefang);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        RemenkefangEntity remenkefang = remenkefangService.selectById(id);
        if(type.equals("1")) {
        	remenkefang.setThumbsupnum(remenkefang.getThumbsupnum()+1);
        } else {
        	remenkefang.setCrazilynum(remenkefang.getCrazilynum()+1);
        }
        remenkefangService.updateById(remenkefang);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody RemenkefangEntity remenkefang, HttpServletRequest request){
    	remenkefang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(remenkefang);

        remenkefangService.insert(remenkefang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
	@IgnoreAuth
    @RequestMapping("/add")
    public R add(@RequestBody RemenkefangEntity remenkefang, HttpServletRequest request){
    	remenkefang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(remenkefang);

        remenkefangService.insert(remenkefang);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody RemenkefangEntity remenkefang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(remenkefang);
        remenkefangService.updateById(remenkefang);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        remenkefangService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<RemenkefangEntity> wrapper = new EntityWrapper<RemenkefangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("minsuyuangong")) {
			wrapper.eq("yuangonggonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = remenkefangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,RemenkefangEntity remenkefang, HttpServletRequest request,String pre){
        EntityWrapper<RemenkefangEntity> ew = new EntityWrapper<RemenkefangEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = remenkefangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, remenkefang), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 协同算法（按收藏推荐）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,RemenkefangEntity remenkefang, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        String inteltypeColumn = "kefangleixing";
        List<StoreupEntity> storeups = storeupService.selectList(new EntityWrapper<StoreupEntity>().eq("type", 1).eq("userid", userId).eq("tablename", "remenkefang").orderBy("addtime", false));
        List<String> inteltypes = new ArrayList<String>();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<RemenkefangEntity> remenkefangList = new ArrayList<RemenkefangEntity>();
        //去重
        if(storeups!=null && storeups.size()>0) {
            for(StoreupEntity s : storeups) {
                remenkefangList.addAll(remenkefangService.selectList(new EntityWrapper<RemenkefangEntity>().eq(inteltypeColumn, s.getInteltype())));
            }
        }
        EntityWrapper<RemenkefangEntity> ew = new EntityWrapper<RemenkefangEntity>();
        params.put("sort", "id");
        params.put("order", "desc");
        PageUtils page = remenkefangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, remenkefang), params), params));
        List<RemenkefangEntity> pageList = (List<RemenkefangEntity>)page.getList();
        if(remenkefangList.size()<limit) {
            int toAddNum = (limit-remenkefangList.size())<=pageList.size()?(limit-remenkefangList.size()):pageList.size();
            for(RemenkefangEntity o1 : pageList) {
                boolean addFlag = true;
                for(RemenkefangEntity o2 : remenkefangList) {
                    if(o1.getId().intValue()==o2.getId().intValue()) {
                        addFlag = false;
                        break;
                    }
                }
                if(addFlag) {
                    remenkefangList.add(o1);
                    if(--toAddNum==0) break;
                }
            }
        } else if(remenkefangList.size()>limit) {
            remenkefangList = remenkefangList.subList(0, limit);
        }
        page.setList(remenkefangList);
        return R.ok().put("data", page);
    }







}
