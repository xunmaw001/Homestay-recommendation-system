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


import com.dao.DiscussremenkefangDao;
import com.entity.DiscussremenkefangEntity;
import com.service.DiscussremenkefangService;
import com.entity.vo.DiscussremenkefangVO;
import com.entity.view.DiscussremenkefangView;

@Service("discussremenkefangService")
public class DiscussremenkefangServiceImpl extends ServiceImpl<DiscussremenkefangDao, DiscussremenkefangEntity> implements DiscussremenkefangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussremenkefangEntity> page = this.selectPage(
                new Query<DiscussremenkefangEntity>(params).getPage(),
                new EntityWrapper<DiscussremenkefangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussremenkefangEntity> wrapper) {
		  Page<DiscussremenkefangView> page =new Query<DiscussremenkefangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussremenkefangVO> selectListVO(Wrapper<DiscussremenkefangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussremenkefangVO selectVO(Wrapper<DiscussremenkefangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussremenkefangView> selectListView(Wrapper<DiscussremenkefangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussremenkefangView selectView(Wrapper<DiscussremenkefangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
