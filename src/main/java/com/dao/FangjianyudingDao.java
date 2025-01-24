package com.dao;

import com.entity.FangjianyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangjianyudingVO;
import com.entity.view.FangjianyudingView;


/**
 * 房间预定
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface FangjianyudingDao extends BaseMapper<FangjianyudingEntity> {
	
	List<FangjianyudingVO> selectListVO(@Param("ew") Wrapper<FangjianyudingEntity> wrapper);
	
	FangjianyudingVO selectVO(@Param("ew") Wrapper<FangjianyudingEntity> wrapper);
	
	List<FangjianyudingView> selectListView(@Param("ew") Wrapper<FangjianyudingEntity> wrapper);

	List<FangjianyudingView> selectListView(Pagination page,@Param("ew") Wrapper<FangjianyudingEntity> wrapper);
	
	FangjianyudingView selectView(@Param("ew") Wrapper<FangjianyudingEntity> wrapper);
	

}
