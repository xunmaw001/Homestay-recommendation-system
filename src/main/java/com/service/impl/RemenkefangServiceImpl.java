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


import com.dao.RemenkefangDao;
import com.entity.RemenkefangEntity;
import com.service.RemenkefangService;
import com.entity.vo.RemenkefangVO;
import com.entity.view.RemenkefangView;

@Service("remenkefangService")
public class RemenkefangServiceImpl extends ServiceImpl<RemenkefangDao, RemenkefangEntity> implements RemenkefangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RemenkefangEntity> page = this.selectPage(
                new Query<RemenkefangEntity>(params).getPage(),
                new EntityWrapper<RemenkefangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RemenkefangEntity> wrapper) {
		  Page<RemenkefangView> page =new Query<RemenkefangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<RemenkefangVO> selectListVO(Wrapper<RemenkefangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public RemenkefangVO selectVO(Wrapper<RemenkefangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<RemenkefangView> selectListView(Wrapper<RemenkefangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RemenkefangView selectView(Wrapper<RemenkefangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
