package com.dao;

import com.entity.RemenkefangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RemenkefangVO;
import com.entity.view.RemenkefangView;


/**
 * 热门客房
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface RemenkefangDao extends BaseMapper<RemenkefangEntity> {
	
	List<RemenkefangVO> selectListVO(@Param("ew") Wrapper<RemenkefangEntity> wrapper);
	
	RemenkefangVO selectVO(@Param("ew") Wrapper<RemenkefangEntity> wrapper);
	
	List<RemenkefangView> selectListView(@Param("ew") Wrapper<RemenkefangEntity> wrapper);

	List<RemenkefangView> selectListView(Pagination page,@Param("ew") Wrapper<RemenkefangEntity> wrapper);
	
	RemenkefangView selectView(@Param("ew") Wrapper<RemenkefangEntity> wrapper);
	

}
