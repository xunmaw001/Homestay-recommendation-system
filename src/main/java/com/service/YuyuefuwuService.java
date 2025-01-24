package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuyuefuwuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuyuefuwuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuyuefuwuView;


/**
 * 预约服务
 *
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
public interface YuyuefuwuService extends IService<YuyuefuwuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuyuefuwuVO> selectListVO(Wrapper<YuyuefuwuEntity> wrapper);
   	
   	YuyuefuwuVO selectVO(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
   	
   	List<YuyuefuwuView> selectListView(Wrapper<YuyuefuwuEntity> wrapper);
   	
   	YuyuefuwuView selectView(@Param("ew") Wrapper<YuyuefuwuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuyuefuwuEntity> wrapper);
   	

}

