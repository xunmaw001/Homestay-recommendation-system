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


import com.dao.MinsuyuangongDao;
import com.entity.MinsuyuangongEntity;
import com.service.MinsuyuangongService;
import com.entity.vo.MinsuyuangongVO;
import com.entity.view.MinsuyuangongView;

@Service("minsuyuangongService")
public class MinsuyuangongServiceImpl extends ServiceImpl<MinsuyuangongDao, MinsuyuangongEntity> implements MinsuyuangongService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MinsuyuangongEntity> page = this.selectPage(
                new Query<MinsuyuangongEntity>(params).getPage(),
                new EntityWrapper<MinsuyuangongEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MinsuyuangongEntity> wrapper) {
		  Page<MinsuyuangongView> page =new Query<MinsuyuangongView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MinsuyuangongVO> selectListVO(Wrapper<MinsuyuangongEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MinsuyuangongVO selectVO(Wrapper<MinsuyuangongEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MinsuyuangongView> selectListView(Wrapper<MinsuyuangongEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MinsuyuangongView selectView(Wrapper<MinsuyuangongEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
