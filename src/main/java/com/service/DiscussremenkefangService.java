package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussremenkefangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussremenkefangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussremenkefangView;


/**
 * 热门客房评论表
 *
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface DiscussremenkefangService extends IService<DiscussremenkefangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussremenkefangVO> selectListVO(Wrapper<DiscussremenkefangEntity> wrapper);
   	
   	DiscussremenkefangVO selectVO(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
   	
   	List<DiscussremenkefangView> selectListView(Wrapper<DiscussremenkefangEntity> wrapper);
   	
   	DiscussremenkefangView selectView(@Param("ew") Wrapper<DiscussremenkefangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussremenkefangEntity> wrapper);
   	

}

