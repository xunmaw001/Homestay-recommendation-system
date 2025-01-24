package com.entity.view;

import com.entity.YuyuefuwuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预约服务
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
@TableName("yuyuefuwu")
public class YuyuefuwuView  extends YuyuefuwuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuyuefuwuView(){
	}
 
 	public YuyuefuwuView(YuyuefuwuEntity yuyuefuwuEntity){
 	try {
			BeanUtils.copyProperties(this, yuyuefuwuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
