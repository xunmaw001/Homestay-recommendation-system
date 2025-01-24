package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RemenkefangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RemenkefangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RemenkefangView;


/**
 * 热门客房
 *
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface RemenkefangService extends IService<RemenkefangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RemenkefangVO> selectListVO(Wrapper<RemenkefangEntity> wrapper);
   	
   	RemenkefangVO selectVO(@Param("ew") Wrapper<RemenkefangEntity> wrapper);
   	
   	List<RemenkefangView> selectListView(Wrapper<RemenkefangEntity> wrapper);
   	
   	RemenkefangView selectView(@Param("ew") Wrapper<RemenkefangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RemenkefangEntity> wrapper);
   	

}

