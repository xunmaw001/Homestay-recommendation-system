package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MinsuyuangongEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MinsuyuangongVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MinsuyuangongView;


/**
 * 民宿员工
 *
 * @author 
 * @email 
 * @date 2023-03-08 16:27:04
 */
public interface MinsuyuangongService extends IService<MinsuyuangongEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MinsuyuangongVO> selectListVO(Wrapper<MinsuyuangongEntity> wrapper);
   	
   	MinsuyuangongVO selectVO(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
   	
   	List<MinsuyuangongView> selectListView(Wrapper<MinsuyuangongEntity> wrapper);
   	
   	MinsuyuangongView selectView(@Param("ew") Wrapper<MinsuyuangongEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MinsuyuangongEntity> wrapper);
   	

}

