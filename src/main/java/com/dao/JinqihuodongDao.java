package com.dao;

import com.entity.JinqihuodongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JinqihuodongVO;
import com.entity.view.JinqihuodongView;


/**
 * 近期活动
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface JinqihuodongDao extends BaseMapper<JinqihuodongEntity> {
	
	List<JinqihuodongVO> selectListVO(@Param("ew") Wrapper<JinqihuodongEntity> wrapper);
	
	JinqihuodongVO selectVO(@Param("ew") Wrapper<JinqihuodongEntity> wrapper);
	
	List<JinqihuodongView> selectListView(@Param("ew") Wrapper<JinqihuodongEntity> wrapper);

	List<JinqihuodongView> selectListView(Pagination page,@Param("ew") Wrapper<JinqihuodongEntity> wrapper);
	
	JinqihuodongView selectView(@Param("ew") Wrapper<JinqihuodongEntity> wrapper);
	

}
