package com.dao;

import com.entity.MinsuyuangongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MinsuyuangongVO;
import com.entity.view.MinsuyuangongView;


/**
 * 民宿员工
 * 
 * @author 
 * @email 
 * @date 2023-03-08 16:27:04
 */
public interface MinsuyuangongDao extends BaseMapper<MinsuyuangongEntity> {
	
	List<MinsuyuangongVO> selectListVO(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
	
	MinsuyuangongVO selectVO(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
	
	List<MinsuyuangongView> selectListView(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);

	List<MinsuyuangongView> selectListView(Pagination page,@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
	
	MinsuyuangongView selectView(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
	

}
