package com.dao;

import com.entity.DiscussremenkefangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussremenkefangVO;
import com.entity.view.DiscussremenkefangView;


/**
 * 热门客房评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface DiscussremenkefangDao extends BaseMapper<DiscussremenkefangEntity> {
	
	List<DiscussremenkefangVO> selectListVO(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
	
	DiscussremenkefangVO selectVO(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
	
	List<DiscussremenkefangView> selectListView(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);

	List<DiscussremenkefangView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
	
	DiscussremenkefangView selectView(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
	

}
