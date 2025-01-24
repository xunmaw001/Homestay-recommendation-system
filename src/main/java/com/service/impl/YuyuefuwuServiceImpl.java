package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YuyuefuwuDao;
import com.entity.YuyuefuwuEntity;
import com.service.YuyuefuwuService;
import com.entity.vo.YuyuefuwuVO;
import com.entity.view.YuyuefuwuView;

@Service("yuyuefuwuService")
public class YuyuefuwuServiceImpl extends ServiceImpl<YuyuefuwuDao, YuyuefuwuEntity> implements YuyuefuwuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuyuefuwuEntity> page = this.selectPage(
                new Query<YuyuefuwuEntity>(params).getPage(),
                new EntityWrapper<YuyuefuwuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuyuefuwuEntity> wrapper) {
		  Page<YuyuefuwuView> page =new Query<YuyuefuwuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuyuefuwuVO> selectListVO(Wrapper<YuyuefuwuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuyuefuwuVO selectVO(Wrapper<YuyuefuwuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuyuefuwuView> selectListView(Wrapper<YuyuefuwuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuyuefuwuView selectView(Wrapper<YuyuefuwuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
