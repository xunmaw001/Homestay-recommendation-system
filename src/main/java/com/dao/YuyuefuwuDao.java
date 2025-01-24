package com.dao;

import com.entity.YuyuefuwuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuyuefuwuVO;
import com.entity.view.YuyuefuwuView;


/**
 * 预约服务
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface YuyuefuwuDao extends BaseMapper<YuyuefuwuEntity> {
	
	List<YuyuefuwuVO> selectListVO(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
	
	YuyuefuwuVO selectVO(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
	
	List<YuyuefuwuView> selectListView(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);

	List<YuyuefuwuView> selectListView(Pagination page,@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
	
	YuyuefuwuView selectView(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
	

}
